//
//  Account.swift
//  
//
//  Created by Robert Steilberg on 9/22/19.
//

import Foundation

struct Account: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var balance: Float
    var institution: String
}
