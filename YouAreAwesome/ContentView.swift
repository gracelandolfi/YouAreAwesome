//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Grace Landolfi on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    var body: some View {
            VStack {
                
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                Spacer()
                
                
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)                .foregroundColor(.red)
                    .padding()
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                
             
                Spacer()
                
                
                Button("Show Message") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
                    messageString = (messageString == message1 ? message2 : message1)
                    
                    imageName = (imageName == "image0" ? "image1" : "image0")
                }
//
//                    if messageString == message1 {
//                        messageString = message2
//                    } else {
//                        messageString = message1
//                    }
//                }
                .buttonStyle(.borderedProminent)
                
                
                //      .border(.purple, width: 5)
                .padding()
                
            }
        }
    }


#Preview {
    ContentView()
}
