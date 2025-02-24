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

struct ComplexTransitionsView: View {
    @State private var showText = true
    var body: some View {
        NavigationStack {
            VStack {
                GroupBox("Combining Transitions") {
                    VStack {
                        if showText {
                            Text("Move & Fade")
                                .font(.title)

                        } else {
                            Text(" ")
                                .font(.title)
                        }
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox("Custom Transitions") {
                   
                }
                GroupBox("Custom Transition modifier") {
                   
                }
                GroupBox("Custom asymmetric.") {
                    
                }
                GroupBox("Custom asymmetric.") {
                   
                }
                Spacer()
            }
            .animation(.linear, value: showText)
            .padding()
            .navigationTitle("Complex Transitions")
        }
    }
}

#Preview {
    ComplexTransitionsView()
}
