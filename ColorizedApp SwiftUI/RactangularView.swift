//
//  RactangularView.swift
//  ColorizedApp SwiftUI
//
//  Created by Егор on 01.11.2021.
//

import SwiftUI

struct RactangularView: View {
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 150)
            .cornerRadius(25)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 8))
            
    }
}

struct RactangularView_Previews: PreviewProvider {
    static var previews: some View {
        RactangularView()
    }
}
