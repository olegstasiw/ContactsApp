//
//  ContactsDetail.swift
//  ContactsApp
//
//  Created by mac on 04.08.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import SwiftUI

struct ContactsDetail: View {
    
    let contacts: [Person]

    var body: some View {

        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text("\(contact.fullName)")
                        .font(.callout)) {
                            DetailContactRow(contact: contact,
                                             content: "phone")
                            DetailContactRow(contact: contact,
                                             content: "email")
                    }
                }

            }.listStyle(GroupedListStyle())
                .navigationBarTitle(Text("Contacts List"))
        }
        

    }
}

struct ContactsDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDetail(contacts: [])
    }
}
