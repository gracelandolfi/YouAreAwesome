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
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)                .foregroundColor(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            

            Spacer()
            
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous! That's You!",
                                "You Rule!"]
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0...9)
                }
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
//                messageString = messages[messageNumber]
//                messageNumber = messageNumber + 1
//                
//                if messageNumber == messages.count {
//                    messageNumber = 0
//                }
//                //      messageString = (messageString == message1 ? message2 : message1)
//                
//                //                imageName = (imageName == "image0" ? "image1" : "image0")
//                
//                //TODO: - update the imageName variable -
//                imageName = "image\(imageNumber)"
//                imageNumber = imageNumber + 1
//                if imageNumber > 9 {
//                    imageNumber = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }



#Preview {
    ContentView()
}
