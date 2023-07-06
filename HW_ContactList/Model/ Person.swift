//
//   Person.swift
//  HW_ContactList
//
//  Created by Anton Kondratenko on 04.07.2023.
//

struct Person {
    let dataStore = DataStore()
    
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
        let dataStore = DataStore()
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phones = dataStore.phones.shuffled()
        let mails = dataStore.mails.shuffled()
        
        var persons: [Person] = []
        
        let minimumCount = min(names.count,
                               surnames.count,
                               phones.count,
                               mails.count)
        
        for index in 0..<minimumCount {
            let person = Person(firstName: names[index],
                                lastName: surnames[index],
                                phone: phones[index],
                                email: mails[index])
            persons.append(person)
        }
        return persons
    }
}
