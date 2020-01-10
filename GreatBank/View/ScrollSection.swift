//
//  ScrollSection.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct ScrollSection: View {
    
    let accounts: [Bank]
    
    let geometry: GeometryProxy
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(accounts) { account in
                    NavigationLink(destination: TransactionView()) {
                        BankCard(account: account, geometry: self.geometry)
                    }
                }
            }
        }
        
    }
}
