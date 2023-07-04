//
//   Person.swift
//  HW_ContactList
//
//  Created by Anton Kondratenko on 04.07.2023.
//

struct Person {
    let person = DataStore()
    
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    
    
    static func getPersons(names: [String],
                           surnames: [String],
                           phones: [String],
                           mails: [String]) -> [Person] {
        var persons: [Person] = []
        
        for index in 0..<min(names.count, surnames.count, phones.count, mails.count) {
            let person = Person(firstName: names[index],
                                lastName: surnames[index],
                                phone: phones[index],
                                email: mails[index])
            persons.append(person)
        }
        return persons
    }
}
