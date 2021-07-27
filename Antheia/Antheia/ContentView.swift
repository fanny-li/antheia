//
//  ContentView.swift
//  Antheia
//
//  Created by Fanny Li on 7/17/21.
//

import SwiftUI

struct ContentView: View {
   
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        
        switch viewRouter.currentPage {
        case .startingPage:
            StartingPage(viewRouter: ViewRouter())
        case .signUpPage:
            SignUp(viewRouter: ViewRouter())
        case .loginPage:
            Login()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}





