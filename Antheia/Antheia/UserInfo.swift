//
//  UserInfo.swift
//  Antheia
//
//  Created by Fanny Li on 8/4/21.
//

import Foundation
import Combine

class UserInfo: ObservableObject {
    @Published var name: String{
        didSet {
            UserDefaults.standard.set(name, forKey: "name")
            
        }
    }
    
    @Published var age: String{
        didSet{
            UserDefaults.standard.set(age, forKey: "age")
        }
    }
    
    
    init(){
        self.name = UserDefaults.standard.object(forKey: "name") as? String ?? ""
        self.age = UserDefaults.standard.object(forKey: "age") as? String ?? ""
    }
}
