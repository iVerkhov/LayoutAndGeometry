//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Игорь Верхов on 26.02.2024.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
                        let opacity = proxy.frame(in: .global).minY / 200
                        let scale = min(1,
                                        max(0.5,
                                            proxy.frame(in: .global).maxY / fullView.frame(in: .global).height)
                                        )
                        let scale2 = max(0.5, proxy.frame(in: .global).minY / 400)
                        let hue = min(1, (proxy.frame(in: .global).maxY / fullView.frame(in: .global).height))
                        
                        Text("Row #\(index) : \(opacity.formatted()) : \(scale.formatted()) : \(hue.formatted())")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color(hue: hue, saturation: 0.5, brightness: 1))
                            .opacity(opacity)
                            .scaleEffect(scale)
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
