import SwiftUI

struct SettingsView: View {
    @Binding var username: String
    @Binding var darkModeEnabled: Bool

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Ajustes de Usuario")) {
                    TextField("Nombre de Usuario", text: $username)
                }

                Section(header: Text("Ajustes de Apariencia")) {
                    Toggle("Modo Oscuro", isOn: $darkModeEnabled)
                }
            }
            .navigationTitle("Ajustes")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(username: .constant("Oscar"), darkModeEnabled: .constant(false))
    }
}
