//
//  ContentView.swift
//  Drawing Fin
//
//  Created by Franklin Velásquez on 16/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.gray)
            // add border to the sape using overlay and another shape like Circle()
                .overlay(Circle().stroke(Color.blue, lineWidth: 20))
                .shadow(radius: 30)
                .padding(30)
            
            
            Rectangle()
            
            Ellipse()
                .stroke(Color.green,lineWidth: 20) // shape with just the border and inside empty
            
            LinesDrawer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
