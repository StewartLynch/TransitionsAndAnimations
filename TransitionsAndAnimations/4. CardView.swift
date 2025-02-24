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

struct CardView: View {
    var body: some View {
        VStack {
            Text("Amazing Card")
                .font(.title)
                .bold()
                .padding()
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
        }
        .frame(width: 300, height: 200)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(radius: 10)
        )
        .padding()
    }
}

#Preview {
    CardView()
}
