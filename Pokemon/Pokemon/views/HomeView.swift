import SwiftUI
import Alamofire

struct Pokemon: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let imageUrl: String
}

struct PokemonListView: View {
    @State private var pokemons: [Pokemon] = []
    @State private var selectedPokemon: Pokemon? = nil
    @Binding var capturedPokemons: [Pokemon]

    var body: some View {
        NavigationView {
            List(pokemons) { pokemon in
                HStack {
                    AsyncImage(url: URL(string: pokemon.imageUrl)) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        case .failure:
                            Image("placeholder_image")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        case .empty:
                            ProgressView()
                        @unknown default:
                            EmptyView()
                        }
                    }

                    VStack(alignment: .leading) {
                        Text(pokemon.name)
                            .font(.headline)
                        Text("Type: \(pokemon.type)")
                            .font(.subheadline)
                    }
                    .onTapGesture {
                        selectedPokemon = pokemon
                    }
                    .sheet(item: $selectedPokemon) { selectedPokemon in
                        PokemonDetailView(pokemon: selectedPokemon, onCapture: { capturedPokemon in
                            // Manejar la captura del Pokémon aquí
                            capturedPokemons.append(capturedPokemon)
                            
                        })
                    }
                }
            }
            .navigationTitle("Pokémon List")
            .onAppear(perform: fetchPokemonData)
        }
    }

    func fetchPokemonData() {
        let apiUrl = "https://pokeapi.co/api/v2/pokemon"

        AF.request(apiUrl)
            .responseDecodable(of: PokemonListResponse.self) { response in
                switch response.result {
                case .success(let pokemonListResponse):
                    var fetchedPokemons: [Pokemon] = []

                    let group = DispatchGroup()

                    for result in pokemonListResponse.results {
                        group.enter()

                        AF.request(result.url)
                            .responseDecodable(of: PokemonDetailResponse.self) { response in
                                defer { group.leave() }

                                switch response.result {
                                case .success(let pokemonDetailResponse):
                                    let type = pokemonDetailResponse.types.first?.type.name.capitalized ?? "Unknown"
                                    fetchedPokemons.append(Pokemon(name: result.name.capitalized,
                                                                   type: type,
                                                                   imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(result.url.extractPokemonID()!).png"))
                                case .failure(let error):
                                    print("Error fetching Pokémon details: \(error.localizedDescription)")
                                }
                            }
                    }

                    group.notify(queue: .main) {
                        self.pokemons = fetchedPokemons
                    }

                case .failure(let error):
                    print("Error fetching Pokémon data: \(error.localizedDescription)")
                }
            }
    }
}

struct PokemonListResponse: Decodable {
    let results: [PokemonResult]
}

struct PokemonResult: Decodable {
    let name: String
    let url: String
}

struct PokemonDetailResponse: Decodable {
    let types: [PokemonType]
}

struct PokemonType: Decodable {
    let type: PokemonTypeName
}

struct PokemonTypeName: Decodable {
    let name: String
}

struct PokemonDetailView: View {
    let pokemon: Pokemon
    @State private var pokemonDetails: PokemonDetail? = nil
    @State private var isSwipedUp = false
    @State private var isSwipeUpComplete = false
    @State private var showCaptureSuccessAlert = false
    @State private var pokeballOffset: CGSize = .zero

    // Agrega un cierre (closure) para manejar la captura del Pokémon
    var onCapture: ((Pokemon) -> Void)?

    var body: some View {
        VStack {
            Text(pokemon.name)
                .font(.title)
            Text("Type: \(pokemon.type)")
                .font(.headline)
            AsyncImage(url: URL(string: pokemon.imageUrl)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                case .failure:
                    Image("placeholder_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                case .empty:
                    ProgressView()
                @unknown default:
                    EmptyView()
                }
            }

            if let pokemonDetails = pokemonDetails {
                Text("Height: \(pokemonDetails.height)")
                Text("Weight: \(pokemonDetails.weight)")
            } else {
                ProgressView()
            }

            if isSwipeUpComplete {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.green)
                    .padding(.top, 10)
                    .onAppear {
                        // Llama al cierre para manejar la captura del Pokémon
                        onCapture?(pokemon)
                    }
            } else {
                VStack {
                    Text("Swipe up to capture!")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Image(systemName: "arrow.up.circle")
                        .font(.title)
                        .padding()
                    
                }
                .padding(.top, 20)
            }
        }
        .navigationTitle(pokemon.name)
        .onAppear(perform: fetchPokemonDetails)
        .alert(isPresented: $showCaptureSuccessAlert) {
            Alert(title: Text("Captured!"), message: Text("You captured \(pokemon.name)!"), dismissButton: .default(Text("OK")))
        }
        .gesture(
            DragGesture()
                .onChanged { value in
                    if value.translation.height < -50 {
                        isSwipedUp = true
                        pokeballOffset = CGSize(width: value.translation.width, height: value.translation.height)
                        let generator = UINotificationFeedbackGenerator()
                        generator.notificationOccurred(.success)
                    }
                }
                .onEnded { value in
                    if value.translation.height < -50 {
                        isSwipedUp = false
                        isSwipeUpComplete = true
                        showCaptureSuccessAlert = true
                    }
                }
        )
    }

    func fetchPokemonDetails() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(pokemon.name.lowercased())") else {
            return
        }

        AF.request(url)
            .responseDecodable(of: PokemonDetail.self) { response in
                switch response.result {
                case .success(let pokemonDetail):
                    self.pokemonDetails = pokemonDetail
                case .failure(let error):
                    print("Error fetching Pokémon details: \(error.localizedDescription)")
                }
            }
    }
}

struct PokemonDetail: Decodable {
    let height: Int
    let weight: Int
}

extension String {
    func extractPokemonID() -> String? {
        let components = self.components(separatedBy: "/")
        return components[components.count - 2]
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListView(capturedPokemons: .constant([]))
    }
}
