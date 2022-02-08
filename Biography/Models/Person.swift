//
//  Person.swift
//  Biography
//
//  Created by Adilet Berdibekov on 21.12.2021.
//

import Foundation

struct Person: Identifiable, Decodable {
    
    var id: String { name }
    
    let name: String
    let description: String
    let imageName: String
    let shortDescription: String
}

struct PersonSection: Identifiable, Decodable {
   
    var id: String { name }
    
    let name: String
    let picturesImageName: String
}


extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.id == rhs.id
    }
}


extension Person {
    static var stubbed: [Person] {
        let url = Bundle.main.url(forResource: "biography_list", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let people = try! JSONDecoder().decode([Person].self, from: data)
        return people
    }
}
