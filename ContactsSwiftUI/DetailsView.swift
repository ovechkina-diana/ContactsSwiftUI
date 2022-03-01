//
//  DetailsView.swift
//  ContactsSwiftUI
//
//  Created by Diana Ovechkina on 01.03.2022.
//

import SwiftUI

struct DetailsView: View {
    
    let person: Person
    
    var body: some View {
        List() {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 200, height: 200)
            Label("\(person.phoneNumber)", systemImage: "phone")
            Label("\(person.email)", systemImage: "tray")
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person(id: 1, name: "Alex", surname: "Alexeev", email: "qwe", phoneNumber: "123"))
    }
}
