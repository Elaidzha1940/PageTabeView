//
//  ContentView.swift
//  PageTabView
//
//  Created by Elaidzha Shchukin on 12.09.2022.
//

import SwiftUI
// 11.09
struct ContentView: View {
    var body: some View {
        TabView {
            OnboardView(systemImageName: "scribble.variable",
                        title: "Sketchpad",
                        description: "Grear for jotting down your ideas and brainstorming your next future.")
            OnboardView(systemImageName: "paintpalette.fill",
                        title: "Color Picker",
                        description: "Grear for jotting down your ideas and brainstorming your next future.")
            OnboardView(systemImageName: "dial.min.fill",
                        title: "Custom Setting",
                        description: "Grear for jotting down your ideas and brainstorming your next future.")
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}


struct OnboardView: View {
    
    let systemImageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.teal)
        
            Text(title)
                .font(.title).bold()

            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 40)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(systemImageName: "scribble.variable",
                    title: "Sketchpad",
                    description: "Grear for jotting down your ideas and brainstorming your next future.")
        
    }
    
}
///12
