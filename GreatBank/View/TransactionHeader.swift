//
//  TransactionHeader.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct TransactionHeader: View {
    
    let geometry: GeometryProxy
    
    var body: some View {
        
        
        VStack(spacing: 0) {
            
            Image("bank")
                .resizable()
                .frame(width: 54, height: 54)
                .clipShape(Circle())
            
            Text("GBP")
                .font(Font.custom("SFProDisplay-Semibold", size: 21))
                .padding(.top, 10)
            Text("gb. Account")
                .font(Font.custom("SFProText-Bold", size: 18))
                .padding(.top, 1.2)
            
            Text("00175579 | 62-22-07")
                .kerning(-0.38)
                .font(Font.custom("SFProText-Semibold", size: 15))
                .foregroundColor(Color("Light"))
                .padding(.top, 8.8)
            
            AccountBalance(currencySymbol: "£", currencySymbolFont: "SFProDisplay-Bold", currencySymbolSize: 25, currencySymbolSpacing: -0.2, amount: "1,720", amountFont: "SFProDisplay-Bold", amountSize: 32, amountSpacing: -0.17, dotFont: "SFProDisplay-Bold", dotSize: 32, decimalPointAmount: "21", decimalPointFont: "SFProDisplay-Bold", decimalPointSize: 28)
                .frame(width: geometry.size.width, height: nil, alignment: .center)
            
            HStack(alignment: .bottom) {
                Text("Available")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .foregroundColor(Color("Grey"))
                Text("£1,696.50")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .foregroundColor(Color("Dark"))
            }
            
            
        }
        
        
    }
}

//struct TransactionHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        TransactionHeader()
//    }
//}
