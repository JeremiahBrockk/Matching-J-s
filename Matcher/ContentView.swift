//
//  ContentView.swift
//  Matcher
//
//  Created by Mr. Brock💰🤟🏾 on 12/15/22.
//

import SwiftUI
struct CardView: View {
    @State var isTapped = false
    @State var angle = 0.0
    //let card: MatcherGame<String>.Card// put the istapped boolean here
    let images = ["Jordan 1", "Jordan 3 Blue", "Jordan 4 Mil", "Jordan 6", "Jordan 11", "Jordan 12 Gray"]
    var imageIndex = 0
    var isMatched = false
    var body: some View {
        
        if isMatched {
            Color(.clear)
        }
        Button {
            isTapped.toggle()
        } label: {
            if isTapped {
                Image(images[imageIndex])
                //Calls the image so you're able to get just that image to pop up when tapped. (Without Image(images[0]) it wouldn't know where to select the image from
                    .resizable()
                    .frame(width: 75, height: 85)
                    .cornerRadius(15)
            } else {
                Rectangle().foregroundStyle(.red)
                    .frame(width: 75, height: 85)
                    .cornerRadius(15)
            }
        }
        // view stuff here
        // }
    }
}
struct ContentView: View {
    @State var isTapped = false
    @State private var selectedCardIndex: Int? = nil
    var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            Image("Jordan Background")
                .resizable()
                .ignoresSafeArea()
            
            Text("Match Shoe👟")
                .offset(x:0,y: -300)
            
                .font(.largeTitle)
            NavigationLink("Shuffle", destination: Cardify())
                .offset(x:0, y: 300)
                .foregroundColor(.red)
            
            Grid {
                GridRow {
                    GridRow {
                        CardView(imageIndex: 0)
                        CardView(imageIndex: 1)
                        CardView(imageIndex: 1)
                        CardView(imageIndex: 2)
                        //Calls images to show one by one after being tapped
                    }
                }
                GridRow {
                    CardView(imageIndex: 3)
                    CardView(imageIndex: 0)
                    CardView(imageIndex: 3)
                    CardView(imageIndex: 4)
                }
                GridRow {
                    CardView(imageIndex: 2)
                    CardView(imageIndex: 4)
                    CardView(imageIndex: 5)
                    CardView(imageIndex: 5)
                }
            }
        }
    }
    
    //    func chooseCard(imageIndex: Int) {
    //        let images = ["Jordan 1", "Jordan 3 Blue", "Jordan 4 Mil", "Jordan 6", "Jordan 11", "Jordan 12 Gray"]
    //
    //        if selectedCard.isEmpty {
    //            selectedCard = images[imageIndex]
    //        } else {
    //
    //        }
    //    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



