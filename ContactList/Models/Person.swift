//
//  Person.swift
//  ContactList
//
//  Created by EkaterinaP on 23.03.2022.
//

struct Person {
    let firstName: String
    let secondName: String
    let phone: String
    let eMail: String
    
    var getFullName: String {
        "\(firstName) \(secondName)"
    }
}
