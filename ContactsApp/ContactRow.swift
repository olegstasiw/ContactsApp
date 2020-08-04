//
//  ContactRow.swift
//  ContactsApp
//
//  Created by mac on 04.08.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import SwiftUI

struct ContactRow: View {
    
    let contact: Person
    
    var body: some View {
        Button(action: { }) {
            HStack {
                Text("\(contact.fullName)")
            }
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Person( name: "Oleg", surname: "Stasiw", email: "123@sss", phoneNumber: "222222"))
    }
}
