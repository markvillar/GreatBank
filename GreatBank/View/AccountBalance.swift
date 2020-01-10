//
//  AccountBalance.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct AccountBalance: View {
    
    let currencySymbol: String
    @State var currencySymbolFont: String = "SFProDisplay-Semibold"
    let currencySymbolSize: CGFloat
    let currencySymbolSpacing: CGFloat
    
    let amount: String
    @State var amountFont: String = "SFProDisplay-Semibold"
    let amountSize: CGFloat
    let amountSpacing: CGFloat
    
    @State var dotFont: String = "SFProDisplay-Semibold"
    let dotSize: CGFloat
    
    let decimalPointAmount: String
    @State var decimalPointFont: String = "SFProDisplay-Semibold"
    let decimalPointSize: CGFloat
    
    var body: some View {
        
        VStack {
            HStack(alignment: .bottom, spacing: 2) {
                Text(currencySymbol)
                    .font(Font.custom(currencySymbolFont, size: currencySymbolSize))
                    .kerning(currencySymbolSpacing)
                Text(amount)
                    .font(Font.custom(amountFont , size: amountSize))
                Text(".")
                    .font(Font.custom(dotFont, size: dotSize))
                Text(decimalPointAmount)
                    .font(Font.custom(decimalPointFont, size: decimalPointSize))
            }
        }
        
    }
}

struct AccountBalance_Previews: PreviewProvider {
    static var previews: some View {
        AccountBalance(currencySymbol: "£", currencySymbolSize: 30, currencySymbolSpacing: -0.21, amount: "1,720", amountSize: 38, amountSpacing: 0, dotSize: 40, decimalPointAmount: "21", decimalPointSize: 34)
            .previewLayout(.sizeThatFits)
    }
}
