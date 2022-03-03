//
//  ContactsListView.swift
//  ContactsSwiftUI
//
//  Created by Diana Ovechkina on 01.03.2022.
//

import SwiftUI

struct ContactsListView: View {
    
    let personsInfo: [Person]
    
    var body: some View {
            
        NavigationView{
         List(personsInfo) { person in
            NavigationLink(destination: DetailsView(person: person) ) {
                Text("\(person.fullName)")
            }
        }.navigationTitle("Contact List")
        }
       // .navigationTitle("Contact List")
            
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(personsInfo: Person.getContactList())
    }
}
