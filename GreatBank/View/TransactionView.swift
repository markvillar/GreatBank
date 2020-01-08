//
//  TransactionView.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct TransactionView: View {
    
    init() {
        // Resize NavigationView's Title
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "HelveticaNeue-Bold", size: 18)!]
    }
    
    let todayTransactions = [
        Transaction(recipientName: "Transport for London", recipientLogo: "tube", transactionType: "expense", time: "8:45pm", sign: "-", amount: "2.80"),
        Transaction(recipientName: "Starbucks", recipientLogo: "starbucks", transactionType: "expense", time: "3:52pm", sign: "-", amount: "3.40"),
        Transaction(recipientName: "To Elena Sanchez Torres Navarro", recipientLogo: "bbva", transactionType: "transfer", time: "9:06am", sign: "+", amount: "300")
    ]
    
    let otherTransactions = [
        Transaction(recipientName: "Odeon", recipientLogo: "o", transactionType: "expense", time: "11:45pm", sign: "-", amount: "15.90"),
        Transaction(recipientName: "Gap", recipientLogo: "gap", transactionType: "expense", time: "1:10pm", sign: "-", amount: "29.95"),
        Transaction(recipientName: "GBP to EUR", recipientLogo: "gap", transactionType: "exchange", time: "9:06am", sign: "-", amount: "300"),
        Transaction(recipientName: "To Elena Sanchez Torres", recipientLogo: "bbva", transactionType: "transfer", time: "8:45pm", sign: "-", amount: "400"),
        Transaction(recipientName: "gb. Cashback", recipientLogo: "gb", transactionType: "cashback", time: "11:45pm", sign: "-", amount: "0.50")
    ]
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { geometry in
                
                ZStack {
                    
                    Color("Background")
                    
                    VStack(alignment: .center, spacing: 0, content: {
                        
                        ScrollView(showsIndicators: false, content: {
                            
                            ZStack {
                                
                                HeaderBackground(offsetValue: -((geometry.size.height * 2) + 50), geometry: geometry)
                                
                                //Contents
                                
                                VStack {
                                    
                                    TransactionHeader(geometry: geometry)
                                        .padding([.vertical], 12)
                                    
                                    
                                    Text("Transactions")
                                        .font(Font.custom("SFProDisplay-Bold", size: 24))
                                        .padding(.top, 78)
                                        .padding(.bottom, 23)
                                    
                                    VStack(spacing: 23) {
                                        
                                        //Transactions Today
                                        
                                        HStack {
                                            Image("today")
                                            Spacer()
                                            Text("£193.89")
                                                .font(Font.custom("SFProText-Semibold", size: 15))
                                                .foregroundColor(Color("Light"))
                                        }
                                        .padding(.leading, 28)
                                        .padding(.trailing, 20)
                                        
                                        ForEach(self.todayTransactions) { transaction in
                                            Item(transaction: transaction, geometry: geometry)
                                        }
                                        
                                        //Other Transactions
                                        
                                        ZStack {
                                            
                                            HStack {
                                                Image("past-transactions")
                                                Spacer()
                                                Text("-£83.80")
                                                    .font(Font.custom("SFProText-Semibold", size: 15))
                                                    .foregroundColor(Color("Light"))
                                            }
                                            .padding(.leading, 28)
                                            .padding(.trailing, 20)
                                            
                                            //Button
                                            
                                            Button(action: {
                                                //Button Acction
                                            }) {
                                                
                                                Button("+") {
                                                    //Button Acction
                                                }
                                                .font(Font.system(size: 14.7))
                                                .frame(width: 50, height: 50, alignment: .center)
                                                .foregroundColor(Color.white)
                                                .accentColor(Color.primary)
                                                .background(Color.black)
                                                .clipShape(Circle())
                                                .shadow(radius: 2.5)
                                                .offset(y: -10)
                                                
                                            }
                                            
                                        }
                                        
                                        ForEach(self.otherTransactions) { transaction in
                                            Item(transaction: transaction, geometry: geometry)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                
                                Spacer()
                                
                            }
                            
                        })
                        
                    })
                        .padding(.bottom, 20)
                    
                }
            }
                
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(
                leading:
                Button(action: {
                    print("Back tapped")
                }) {
                    Image("back")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 24, height: 24)
                },
                trailing: Button(action: {
                    print("Share tapped")
                }) {
                    Image("shareIcon")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 24, height: 19)
            })
            
        }
        
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
    }
}
