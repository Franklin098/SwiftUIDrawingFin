//
//  ZappyCode.swift
//  Drawing Fin
//
//  Created by Franklin Velásquez on 16/04/23.
//

import SwiftUI

// Drawing lines

struct LinesDrawer: View {
    var body: some View {
        
        // Draw custom shapes, lines
        
        GeometryReader{ geometry in
            
            Path { path in
                
                let screenWith = geometry.size.width;
                let screenHeight = geometry.size.height;
                
                // draw line that cross all the screen
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: screenWith, y: screenHeight))
                
                // (0,0) is at top left corner of the device
                
                // we can keep adding lines
                
                path.addLine(to: CGPoint(x: screenWith, y: screenHeight*0.5))
                
                // we basically have a pencil that we move drawing lines
                path.addLine(to: CGPoint(x: screenWith*0.5, y: 0))
                
            
                
            }.fill(Color.blue)
            
        }
    }
}

struct ZappyCode_Previews: PreviewProvider {
    static var previews: some View {
        LinesDrawer()
    }
}
