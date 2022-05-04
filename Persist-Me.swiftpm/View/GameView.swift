import SwiftUI

struct GameView: View {
    var body: some View {
        GeometryReader{ space in
            ControllerRepresentable()
                .ignoresSafeArea(.all)
        }
    }
}
