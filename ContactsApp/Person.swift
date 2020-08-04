//
//  Person.swift
//  ContactsApp
//
//  Created by mac on 04.08.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import Foundation

struct Person: Identifiable {

    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getContactList() -> [Person] {

        var persons: [Person] = []

        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()

        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index])

            persons.append(person)
        }

        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
