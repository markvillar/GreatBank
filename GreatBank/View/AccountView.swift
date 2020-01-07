//
//  AccountView.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct AccountsView: View {
    
    init() {
        // Resize NavigationView's Title
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "HelveticaNeue-Bold", size: 18)!]
    }
    
    var gbAccounts = [
        Bank(bankLogo: "bank", bankName: "GBP", isAccount: true, accountType: "gb. Account", accountNumber: "00175579", expirationDate: "62-22-07", currency: "£", balance: "1,720.21", available: "1,720.21", gradient: [Color("StartGradient"), Color("EndGradient")], logoWidth: 58, logoHeight: 58, clippedShape: true),
        Bank(bankLogo: "currenciesLogos", bankName: "International", isAccount: false, accountType: "Accounts", accountNumber: "0", expirationDate: "0", currency: "£", balance: "0", available: "0", gradient: [Color("StartGradient"), Color("EndGradient")], logoWidth: 171, logoHeight: 54, clippedShape: false)
    ]
    
    var bankAccounts = [
        Bank(bankLogo: "lloyds", bankName: "Lloyds Bank", isAccount: true, accountType: "Classic Account", accountNumber: "00175579", expirationDate: "62-22-07", currency: "£", balance: "2,752.27", available: "2,752.27", gradient: [Color("StartGradient"), Color("LloydsEnd")], logoWidth: 54, logoHeight: 54, clippedShape: true),
        Bank(bankLogo: "banks", bankName: "Credit Cards", isAccount: false, accountType: "Link all your credit cards in one place", accountNumber: "00175579", expirationDate: "62-22-07", currency: "£", balance: "2,752.27", available: "2,752.27", gradient: [Color("StartGradient"), Color("CreditCardsEnd")], logoWidth: 171, logoHeight: 54, clippedShape: false)
    ]
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { geometry in
                
                ZStack(alignment: .top) {
                    
                    Color("Background")
                    
                    
                    //Content Begins
                    
                    ScrollView(showsIndicators: false, content: {
                        
                        ZStack {
                            
                            //(Semi-Circle) Header Background
                            
                            HeaderBackground(offsetValue: -(geometry.size.height * 1.7), geometry: geometry)
                            
                            VStack(spacing: 0) {
                                AccountBalance(currencySymbol: "£", currencySymbolSize: 30, currencySymbolSpacing: -0.21, amount: "1,720", amountSize: 38, amountSpacing: 0, dotSize: 40, decimalPointAmount: "21", decimalPointSize: 34)
                                    .padding([.vertical])
                                
                                Text("British Pounds")
                                    .foregroundColor(Color("Grey"))
                                    .kerning(-0.3)
                                    .font(Font.custom("SFProText-Semibold", size: 12))
                                    .padding(.bottom, 50)
                                
                                //GB Accounts
                                SectionPicker(title: "gb. Accounts")
                                ScrollSection(accounts: self.gbAccounts, geometry: geometry)
                                
                                //Bank Accounts
                                SectionPicker(title: "Bank Accounts")
                                ScrollSection(accounts: self.bankAccounts, geometry: geometry)
                                
                            }
                            
                        }
                        
                    })
                        
                        .navigationBarTitle("All Accounts", displayMode: .inline)
                        .navigationBarItems(
                            leading:
                            Button(action: {
                                print("Menu tapped")
                            }) {
                                Image("iconTopBarBack")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 36, height: 27)
                            },
                            trailing: Button(action: {
                                print("Circule tapped")
                            }) {
                                Image("combinedShape87903")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 24, height: 24)
                        })
                    
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView()
    }
}
