//
//  BankCard.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct BankCard: View {
    
    let account: Bank
    
    let geometry: GeometryProxy
    
    var body : some View {
        
        VStack(alignment: .center, spacing: 0, content: {
            
            if account.clippedShape {
                Image(account.bankLogo)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: account.logoWidth, height: account.logoHeight, alignment: .center)
                    .clipShape(Circle())
                    .padding(.top, 22)
            } else {
                Image(account.bankLogo)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: account.logoWidth, height: account.logoHeight, alignment: .center)
                    .padding(.top, 22)
            }
            
            Text(account.bankName)
                .frame(width: geometry.size.width-40, height: nil)
                .font(Font.custom("SFProText-Semibold", size: 18))
                .foregroundColor(Color("BankName"))
                .padding(.top, 12)
            
            HStack {
                Text("\(account.accountType)")
                    .font(Font.custom("SFProText-Bold", size: 18))
            }
            .padding(.top, 3.2)
            .padding([.horizontal], 20)
            
            //Check if Account
            
            if account.isAccount {
                
                HStack {
                    Text(account.accountNumber)
                        .kerning(-0.16)
                        .font(Font.custom("SFProText-Medium", size: 15))
                    Divider()
                    Text(account.expirationDate)
                        .kerning(-0.16)
                        .font(Font.custom("SFProText-Medium", size: 15))
                }
                .foregroundColor(Color("Light"))
                .padding(.top, 9.8)
                
                HStack(alignment: .bottom) {
                    Text("\(account.currency)")
                        .font(Font.custom("SFProDisplay-Bold", size: 25))
                        .kerning(-0.18)
                    Text("\(account.balance)")
                        .font(Font.custom("SFProDisplay-Bold", size: 34))
                        .kerning(-0.18)
                }
                .padding(.top, 12)
                .padding(.bottom, 20)
                
            }
            else {
                
                Button(action: {
                    //Button Action
                }, label: {
                    Text("Add New Account")
                        .font(Font.custom("SFCompactText-Semibold", size: 18))
                        .fontWeight(.bold)
                        .frame(width: geometry.size.width - 80, height: 45, alignment: .center)
                        .clipShape(Capsule())
                        .accentColor(Color("Dark"))
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding(.top, 20.8)
                        .padding([.horizontal], 20)
                        .padding(.bottom, 31)
                        .shadow(radius: 2.5)
                })
                
            }
            
            
            
        })
            .frame(minWidth: 0, idealWidth: geometry.size.width - 40, maxWidth: geometry.size.width, minHeight: 232, idealHeight: 232, maxHeight: .infinity, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: account.gradient), startPoint: .bottom, endPoint: .top)
                )
                    .shadow(radius: 8)
        )
            
            .overlay(
                RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 4).foregroundColor(Color.white)
        )
            
            .padding([.horizontal], 20)
            .padding([.vertical], 20)
            .animation(.spring())
    }
    
}
