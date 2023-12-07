import SwiftUI

struct ContentView: View {
    @AppStorage("username") var username: String = "Oscar" // Valor por defecto
    @AppStorage("darkModeEnabled") var darkModeEnabled: Bool = false // Valor por defecto
    @State private var capturedPokemons: [Pokemon] = []

    var body: some View {
        TabView {
            SwiftUIView(username: username)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            PokemonListView(capturedPokemons: $capturedPokemons)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explorar")
                }

            SettingsView(username: $username, darkModeEnabled: $darkModeEnabled)
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Configuración")
                }
        }
        .environment(\.colorScheme, darkModeEnabled ? .dark : .light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
