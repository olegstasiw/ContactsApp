//
//  ContactsInfo.swift
//  ContactsApp
//
//  Created by mac on 04.08.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import SwiftUI

struct ContactsInfo: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 200, height: 200)
            
            Text("\(person.fullName)")
                .font(.title)

            HStack {
                Image(systemName: Contacts.email.rawValue)
                Text("\(person.email)")
            }

            HStack {
                Image(systemName: Contacts.phone.rawValue)
                Text("\(person.phoneNumber)")
            }

            Spacer()
        }
    }
}

struct ContactsInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactsInfo(person: Person( name: "Oleg", surname: "Stasiw", email: "ddd@sss.com", phoneNumber: "231213"))
    }
}
