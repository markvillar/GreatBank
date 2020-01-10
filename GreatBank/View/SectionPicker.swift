//
//  SectionPicker.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct SectionPicker: View {
    
    let title: String
    
    var body: some View {
        
        HStack{
            Text(title)
                .font(Font.custom("HelveticaNeue-Bold", size: 20))
                .kerning(-0.31)
            Text("(1)")
                .font(Font.custom("HelveticaNeue-Medium", size: 20))
                .kerning(1.0)
            Spacer()
            Image("arrows")
        }
        .padding(.leading, 18)
        .padding(.trailing, 18)
        
    }
}

struct SectionPicker_Previews: PreviewProvider {
    static var previews: some View {
        SectionPicker(title: "Section Picker")
            .previewLayout(.sizeThatFits)
    }
}
