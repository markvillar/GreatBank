//
//  Transaction.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import Foundation

struct Transaction: Identifiable {
    
    let id = UUID()
    let recipientName: String
    let recipientLogo: String
    let transactionType: String
    let time: String
    let sign: String
    let amount: String
    
}
