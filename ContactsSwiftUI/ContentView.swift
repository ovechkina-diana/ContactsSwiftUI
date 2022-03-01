//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Diana Ovechkina on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
   
    let personsInfo = Person.getContactList()
    
    var body: some View {
        NavigationView {
        TabView {
            ContactsListView(personsInfo: personsInfo)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            NumbersView(personsInfo: personsInfo)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }.navigationTitle("Contact List")

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
