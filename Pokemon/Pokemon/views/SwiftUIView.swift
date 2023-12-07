import SwiftUI

struct SwiftUIView: View {
    var username: String // Recibe el nombre de usuario como parámetro
    
    var body: some View {
        VStack {
            HStack {
                Image("ZTStudios")
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
            }
            VStack {
                HStack {
                    Text("Hola!")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                        .padding(.leading, 32)
                    Image(systemName: "swift").foregroundColor(Color.red)
                }
                Text(username)
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.orange)
                    .padding(.leading, 32)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            VStack {
                Image("IllustrationMain")
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                Text("Desarrollo IOS")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.232))
                Text("Powered by ZT Studios")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(16)
        .onAppear {
            // Agregar vibración al cargar la pantalla
            #if os(iOS)
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
            #endif
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(username: "Bryan")
    }
}
