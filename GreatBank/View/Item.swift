//
//  Item.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct Item: View {
    
    let transaction: Transaction
    
    let geometry: GeometryProxy
    
    var body: some View {
        
        HStack {
            
            //Logo
            
            Image(transaction.recipientLogo)
                .resizable()
                .frame(width: 42, height: 42)
                .clipShape(Circle())
                .shadow(radius: 2)
            
            // Transaction Details
            
            VStack(alignment: .leading, spacing: 12) {
                Image(transaction.transactionType)
                
                Text(transaction.recipientName)
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("SFProText-Semibold", size: 15))
                    .lineLimit(nil)
                    .frame(minWidth: geometry.size.width/2, idealWidth: geometry.size.width/2, maxWidth: geometry.size.width, minHeight: 0, idealHeight: 15, maxHeight: 30, alignment: .leading)
                
                
                Text(transaction.time)
                    .font(Font.custom("SFProText-Semibold", size: 12))
                    .kerning(-0.24)
                    .foregroundColor(Color("Grey"))
            }
            
            Spacer()
            
            // Transaction Amount
            
            VStack(alignment: .trailing) {
                HStack(alignment: .bottom, spacing: 0) {
                    Text("\(transaction.sign) £")
                        .font(Font.custom("SFProText-Semibold", size: 15))
                        .foregroundColor(Color("Dark"))
                    
                    Text(transaction.amount)
                        .font(Font.custom("SFProText-Semibold", size: 18))
                        .foregroundColor(Color("Dark"))
                }
                Spacer()
            }
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 17)
        
    }
}
