//
//  Gradient.swift
//  Drawing Fin
//
//  Created by Franklin Velásquez on 18/04/23.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
        ZStack{
            GeometryReader{ geometry in
                
                
                
                
                Path { path in
                    
                    let screenWith = geometry.size.width;
                    let screenHeight = geometry.size.height;
                    

                    path.move(to: CGPoint(x: 0, y: 0))
                    
                    path.addLine(to: CGPoint(x: 0, y: screenHeight))
                    path.addLine(to: CGPoint(x: screenWith, y: screenHeight))
                    path.addLine(to: CGPoint(x: screenWith, y: 0))
                    
                    
                }.fill(LinearGradient(gradient: .init(colors: [.red, .purple, .blue]), startPoint: .top, endPoint: .bottom))
                
                
                Circle()
                Circle().fill(Color.yellow).padding()
                
            }
            
           
        }
    }
}

struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        Gradient()
    }
}
