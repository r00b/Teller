//
//  BalanceRow.swift
//  
//
//  Created by Robert Steilberg on 9/22/19.
//

import SwiftUI

struct AccountRow: View {
    var account: Account
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(account.name)
                Text(account.institution)
            }
            Spacer()
            Text(account.balance.description)
        }
    }
}

struct AccountRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountRow(account: Account(id: "4f", name: "Primary Checking", balance: 348.23, institution: "C&F Bank"))
    }
}
