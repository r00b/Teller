//
//  BalancesView.swift
//  Teller
//
//  Created by Robert Steilberg on 9/23/19.
//  Copyright © 2019 rhs. All rights reserved.
//

import SwiftUI

struct BalancesView: View {
    
    var groups: [AccountGroup]
    
    init() {
        let banks = AccountGroup(sectionTitle: "Banking", accounts: accountData)
        let investments = AccountGroup(sectionTitle: "Investments", accounts: investData)
        self.groups = [banks, investments]
    }
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Total assets")
                Text("33.3k")
                Text("+$8.29 (0.02%)")
            }
            .background(Color.red)
            Divider()
            List {
                ForEach(groups) { group in
                    Section(header: Text(group.sectionTitle)) {
                        ForEach(group.accounts) { account in
                            AccountRow(account: account)
                        }
                    }
                }
            }.listStyle(GroupedListStyle())
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.blue)
    }
}

struct BalancesView_Previews: PreviewProvider {
    static var previews: some View {
        BalancesView()
    }
}
