//
//  ColorSliderView.swift
//  ColorizedApp SwiftUI
//
//  Created by Егор on 31.10.2021.
//

import SwiftUI


struct ColorSliderView: View {

    @Binding var sliderValue: Double
    @FocusState var isInputActive: Bool
    let color: Color
    
    var body: some View {
        HStack{
            Text("\(sliderValue, specifier: "%.0f")")
            Slider(value: $sliderValue, in: 0...255)
                .accentColor(color)
            TextField("", value: $sliderValue, formatter: NumberFormatter())
                .textContentType(.oneTimeCode)
                .keyboardType(.numberPad)
                .focused($isInputActive)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 60, height: 60)
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                
                Button("Done") {
                    isInputActive = false
                }
            }
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(sliderValue: .constant(222), color: .red)
    }
}
