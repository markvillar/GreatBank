//
//  HeaderBackground.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct HeaderBackground: View {
    
    let offsetValue: CGFloat
    
    let geometry: GeometryProxy
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .frame(width: geometry.size.width + 600, height: geometry.size.width + 600, alignment: .center)
                .foregroundColor(Color.white)
                
                .offset(y: offsetValue)
                .padding(.bottom, offsetValue)
                .padding()
            
        }
        .frame(width: geometry.size.width, height: geometry.size.width)
        
    }
}
