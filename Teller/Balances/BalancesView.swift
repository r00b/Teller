//
//  BalancesView.swift
//  Teller
//
//  Created by Robert Steilberg on 9/23/19.
//  Copyright © 2019 rhs. All rights reserved.
//

import SwiftUI

struct BalancesView: View {
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Total assets")
                Text("33.3k")
                Text("+$8.29 (0.02%)")
            }
            .background(Color.red)
            Divider()
            List(accountData) { account in
                AccountRow(account: account)
            }
            .navigationBarTitle(Text("Accounts"))
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
