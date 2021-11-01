//
//  ContentView.swift
//  ColorizedApp SwiftUI
//
//  Created by Егор on 31.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack {
                RactangularView()
                    .foregroundColor(Color(red: redSliderValue/255.0, green: greenSliderValue/255.0, blue: blueSliderValue/255.0))
                ColorSliderView(sliderValue: $redSliderValue, color: .red)
                ColorSliderView(sliderValue: $greenSliderValue, color: .green)
                ColorSliderView(sliderValue: $blueSliderValue, color: .blue)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
