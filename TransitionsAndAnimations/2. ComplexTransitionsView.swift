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
                                .transition(.move(edge: .trailing).combined(with: .opacity))
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
                    VStack {
                        if showText {
                            Text("Move Scale & Fade")
                                .font(.title)
                                .transition(.moveScaleAndFade)
                        } else {
                            Text(" ")
                                .font(.title)
                        }
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox("Custom Transition modifier") {
                    VStack {
                        if showText {
                            Text("Scale and Rotate")
                                .font(.title)
                                .transition(.scaleRotate)
                        } else {
                            Text(" ")
                                .font(.title)
                        }
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox("Custom asymmetric.") {
                    VStack {
                        if showText {
                            Text("Slide in / Scale Out")
                                .font(.title)
                                .transition(.slideFadeOrScale)
                        } else {
                            Text(" ")
                                .font(.title)
                        }
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
                }
                GroupBox("Custom asymmetric.") {
                    VStack {
                        if showText {
                            Text("Mixed Transitions")
                                .font(.title)
                                .transition(.mixed)
                        } else {
                            Text(" ")
                                .font(.title)
                        }
                        Button(showText ? "Hide" : "Show") {
                            showText.toggle()
                        }
                    }
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

extension AnyTransition {
    static var moveScaleAndFade: AnyTransition {
        AnyTransition(.move(edge: .trailing).combined(with: .opacity).combined(with: .scale(1.5)))
    }
    
    static var scaleRotate: AnyTransition {
        AnyTransition.modifier(
            active: ScaleRotateModifier(scale: 0.3, angle: -90, opacity: 0),
            identity: ScaleRotateModifier(scale: 1, angle: 0, opacity: 1)
        )
    }
    
    static var slideFadeOrScale: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .leading).combined(with: .opacity),
            removal: .move(edge: .trailing).combined(with: .scale)
        )
    }
    
    static var mixed: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .moveScaleAndFade,
            removal: .scaleRotate
        )
    }
}

struct ScaleRotateModifier: ViewModifier {
    let scale: CGFloat
    let angle: Double
    let opacity: Double
    func body(content: Content) -> some View {
        content
            .scaleEffect(scale)
            .rotationEffect(.degrees(angle))
            .opacity(opacity)
    }
}
