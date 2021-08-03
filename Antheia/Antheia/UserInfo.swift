//
//  UserInfo.swift
//  Antheia
//
//  Created by Fanny Li on 7/31/21.
//

import Foundation

class UserInfo: ObservableObject {
    
    internal init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    @Published var name:String
    @Published var age: Int
}

// test
