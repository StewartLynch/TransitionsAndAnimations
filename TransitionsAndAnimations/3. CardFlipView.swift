//
//----------------------------------------------
// Original project: TransitionsAndAnimations
// by  Stewart Lynch on 2025-02-22
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.

import SwiftUI

struct CardFlipView: View {
    @State private var showCard = false
 
    var body: some View {
        NavigationStack {
            VStack {
                Button(showCard ? "Hide Card" : "Show Card") {
                    showCard.toggle()
                }
                .buttonStyle(.borderedProminent)
                if showCard {
                    CardView()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Card Fip Transition")
        }
    }
}

#Preview {
    CardFlipView()
}
