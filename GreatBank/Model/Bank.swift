//
//  Bank.swift
//  GreatBank
//
//  Created by Mark on 24/12/2019.
//  Copyright © 2019 Great British Bank. All rights reserved.
//

import SwiftUI

struct Bank: Identifiable {
    
    let id = UUID()
    let bankLogo: String
    let bankName: String
    let isAccount: Bool
    let accountType: String
    let accountNumber: String
    let expirationDate: String
    let currency: String
    let balance: String
    let available: String
    let gradient: [Color]
    let logoWidth: CGFloat
    let logoHeight: CGFloat
    let clippedShape: Bool
    
}
