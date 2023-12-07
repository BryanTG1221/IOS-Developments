import SwiftUI

struct CaptureView: View {
    var body: some View {
        NavigationView {
            Text("Aquí puedes capturar Pokémon")
                .navigationTitle("Capturar")
        }
    }
}

struct CaptureView_Previews: PreviewProvider {
    static var previews: some View {
        CaptureView()
    }
}
