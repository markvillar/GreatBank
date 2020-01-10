//
//  MyTabView.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct MyTabView: View {
    
    var body: some View {
        
        TabView() {
            AccountsView()
                .tabItem {
                    VStack {
                        Image("accounts")
                            .renderingMode(.original)
                        Text("Accounts")
                    }
            }
            OtherViews()
                .tabItem {
                    VStack {
                        Image("card")
                            .renderingMode(.original)
                        Text("Card")
                    }
            }
            OtherViews()
                .tabItem {
                    VStack {
                        Image("qrcode")
                            .renderingMode(.original)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 54, height: 54, alignment: .center)
                    }
            }
            OtherViews()
                .tabItem {
                    VStack {
                        Image("market")
                            .renderingMode(.original)
                        Text("Market")
                    }
            }
            OtherViews()
                .tabItem {
                    VStack {
                        Image("more")
                            .renderingMode(.original)
                        Text("More")
                    }
            }
            
        }
        .accentColor(Color("Dark"))
        .font(Font.custom("SFProText-Medium", size: 10))
        
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
