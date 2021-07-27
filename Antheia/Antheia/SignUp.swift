//
//  SignUp.swift
//  Antheia
//
//  Created by Fanny Li on 7/23/21.
//

import SwiftUI

struct SignUp : View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body : some View {
        
        Button(action: {
            viewRouter.currentPage = .loginPage
        }, label: {
            Text("Button")
        })
    }
}

struct SignUp_Preview: PreviewProvider {
    static var previews: some View {
        SignUp(viewRouter: ViewRouter())
    }
}
