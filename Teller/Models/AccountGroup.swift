//
//  AccountGroup.swift
//  Teller
//
//  Created by Robert Steilberg on 9/23/19.
//  Copyright © 2019 rhs. All rights reserved.
//

import Foundation

struct AccountGroup: Identifiable {
    var id = UUID()
    var sectionTitle: String
    var accounts: [Account]
}
