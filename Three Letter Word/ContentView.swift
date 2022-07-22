//
//  ContentView.swift
//  Three Letter Word
//
//  Created by Victor Han on 2022/7/22.
//

import SwiftUI

struct ContentView: View {
    @State private var letter = ""
    @State private var counter = 0
    @State private var selectedLetters = ["", "", ""]
    let alphabet = "ABCDEFGHIKJKLMNOPQRSTUVWXYZ"
    var body: some View {
        VStack {
            Text("Three Letter Word")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Tap the gray box to change the color")
                .padding()
            CustomLetterBox(color: .gray, text: letter)
                .onTapGesture {
                    let position = alphabet.index(alphabet.startIndex, offsetBy: counter)
                    letter = String (alphabet[position])
                    counter += 1
                    if counter == alphabet.count{
                        counter = 0
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomLetterBox: View {
    let color : Color
    let text : String
    var body: some View {
        ZStack{
            color
            Text(text)
                .font(.system(size:90))
                .fontWeight(.heavy)
        }
        .frame(width: 120, height: 120, alignment: .center)
    }
    
}
