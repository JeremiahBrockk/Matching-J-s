//
//  Animation.swift
//  Matcher
//
//  Created by Mr. Brock💰🤟🏾 on 12/19/22.
//

import SwiftUI

struct Cardify: View {
    @State var scale = 1.0
    @State var angle = 0.0
    @State var borderThickness = 1.0
    @State var isTapped = false
    
    var body: some View {Button {
        isTapped.toggle()
    } label: {
        if isTapped {
            Circle()
                .frame(width: 75, height: 85)
                .cornerRadius(15)
            
        } else {
            Rectangle().foregroundStyle(.red)
                .frame(width: 75, height: 85)
                .cornerRadius(15)
        }
    }
        Button("Press Here") {
            angle += 90
            borderThickness += 1
            scale += 0.5
        }
        .padding()
        .border(.red,width: borderThickness)
        .rotationEffect(.degrees(angle))
        .animation(.easeIn, value: angle)
        .scaleEffect(scale)
        .animation(.easeInOut(duration: 1))        
    }
}

struct Cardify_Previews: PreviewProvider {
    static var previews: some View {
        Cardify()
    }
}
