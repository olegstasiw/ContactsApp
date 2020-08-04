//
//  ContentView.swift
//  ContactsApp
//
//  Created by mac on 04.08.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    private let contacts = Person.getContactList()
    
    var body: some View {
         TabView {
                 HomeScreen(contacts: contacts)
                     .tabItem {
                         Image(systemName: "house")
                         Text("Home")
                     }
                 ContactsDetail(contacts: contacts)
                     .tabItem {
                         Image(systemName: "person.circle")
                         Text("Detail")
                     }
             }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
