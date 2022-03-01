//
//  NumbersView.swift
//  ContactsSwiftUI
//
//  Created by Diana Ovechkina on 01.03.2022.
//

import SwiftUI

struct NumbersView: View {
    let personsInfo: [Person]
    
    var body: some View {
        List(personsInfo) {
            person in
            Section("\(person.fullName)") {
                Label("\(person.phoneNumber)", systemImage: "phone")
                Label("\(person.email)", systemImage: "tray")
            }
        }
        .listStyle(.plain)
        .navigationTitle("Contact List")
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(personsInfo: Person.getContactList())
    }
}
