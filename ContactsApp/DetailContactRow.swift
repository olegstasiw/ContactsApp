//
//  EmailContactRow.swift
//  ContactsApp
//
//  Created by mac on 04.08.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import SwiftUI

struct DetailContactRow: View {
    
    let contact: Person
    let content: String
    
    var text: String {
        content == "phone"
            ? contact.phoneNumber
            : contact.email
    }

    var image: String {
        content == "phone"
            ? Contacts.phone.rawValue
            : Contacts.email.rawValue
    }

    var body: some View {
        HStack {
            Image(systemName: image)
            Text("\(text)")
        }
    }
}

struct EmailContactRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactRow(contact: Person(name: "ddd", surname: "ddd", email: "ddd", phoneNumber: "ddd"), content: "phone")
    }
}
