//
//  User.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 13.11.2022.
//

import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Vladislav",
            password: "password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let university: String
    let moreInformation: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Vladislav",
            surname: "Sosin",
            age: 20,
            university: "HSE",
            moreInformation: """
                «Высшая школа экономики» (НИУ ВШЭ; "Вы́шка") — автономное учреждение, федеральное государственное высшее учебное заведение. ВШЭ создана в 1992 году, нынешний статус носит с 2009 года. Основной кампус находится в Москве, ещё три — в Санкт-Петербурге, Нижнем Новгороде и Перми.
            """
        )
    }
}
