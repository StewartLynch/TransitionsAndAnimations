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

struct SimpleTransitionsView: View {
    @State private var showText = true
    var body: some View {
        NavigationStack {
            ScrollView {
                GroupBox(".opacity") {
                    VStack {
                        if showText {
                            Text("Fade in and out!")
                                .font(.title)
                                .transition(.opacity)
                        } else {
                            Text(" ") // Empty placeholder maintaining space
                                .font(.title)
                        }
                        
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox(".slide") {
                    VStack {
                        if showText {
                            Text("Slide in and out!")
                                .font(.title)
                                .transition(.slide)
                        } else {
                            Text(" ") // Empty placeholder maintaining space
                                .font(.title)
                        }
                        
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox(".move") {
                    VStack {
                        if showText {
                            Text("Move to/from trailing!")
                                .font(.title)
                                .transition(.move(edge: .trailing))
                        } else {
                            Text(" ") // Empty placeholder maintaining space
                                .font(.title)
                        }
                        
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox(".scale") {
                    VStack {
                        if showText {
                            Text("Scale down and out!")
                                .font(.title)
                                .transition(.scale)
                        } else {
                            Text(" ") // Empty placeholder maintaining space
                                .font(.title)
                        }
                        
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox(".scale with argument") {
                    VStack {
                        if showText {
                            Text("Scale Up and out!")
                                .font(.title)
                                .transition(.scale(scale: 1.5, anchor: .leading))
                        } else {
                            Text(" ") // Empty placeholder maintaining space
                                .font(.title)
                        }
                        
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox(".offset") {
                    VStack {
                        if showText {
                            Text("Up and trailing!")
                                .font(.title)
                                .transition(.offset(x: 300, y: -50))
                        } else {
                            Text(" ") // Empty placeholder maintaining space
                                .font(.title)
                        }
                        
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                Spacer()
            }
            .contentMargins(10, for: .scrollContent)
            .animation(.linear, value: showText)
            .padding(.horizontal)
            .navigationTitle("Simple Transitions")
        }
    }
}

#Preview {
    SimpleTransitionsView()
}
