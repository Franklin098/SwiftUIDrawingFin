//
//  Animation.swift
//  Drawing Fin
//
//  Created by Franklin Velásquez on 18/04/23.
//

import SwiftUI

struct Animation: View {
    
    @State var multiplier = 0.0
    @State var show = false
    
    var body: some View {
        
        VStack{
            
            Gradient()
                .rotationEffect(.degrees(180 * multiplier))
            
            if show {
                Gradient()
                    .rotationEffect(.degrees(180 * multiplier))
                    .transition(.slide)
                
                Gradient()
                    .rotationEffect(.degrees(180 * multiplier))
                    .transition(.opacity)
            }
            
            Button {
                // animate everything that is listening to the code inside here
                withAnimation{
                    multiplier += 1
                }
            } label: {
                Text("Animate")
            }
            
            Button {
                // animate everything that is listening to this code
                withAnimation{
                    self.show.toggle()
                }
                
            } label: {
                Text("Do Transition - Show more circles")
            }
        }

    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
