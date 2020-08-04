//
//  HomeScreen.swift
//  ContactsApp
//
//  Created by mac on 04.08.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    
    let contacts: [Person]
    
    var body: some View {
        
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactsInfo(person: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitle(Text("Contacts List"))
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(contacts: [])
    }
}
