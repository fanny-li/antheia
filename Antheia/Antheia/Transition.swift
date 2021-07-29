//
//  Transition.swift
//  Antheia
//
//  Created by Fanny Li on 7/28/21.
//

import SwiftUI

struct Transition : View{
    @State var showSignUp = true
    var body : some View {
        ZStack{
            // Background
            Rectangle().foregroundColor(Color(red: 0.98, green: 0.93, blue: 0.80)).edgesIgnoringSafeArea(.all)
            
            if showSignUp {
                SignUp().transition(.move(edge: .trailing))
            }
            else{
                Login().transition(.move(edge: .trailing))
            }
            VStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(showSignUp ? "Sign Up" : "Login").font(.title3).fontWeight(.bold).foregroundColor(Color(red: 0.11, green: 0.26, blue: 0.20)).kerning(1.0).padding().background(Color(red: 0.91, green: 0.93, blue: 0.79).opacity(0.6)).cornerRadius(20)
                })
                HStack{
                    Text(showSignUp ? "Already a Member?" : "Not a Member?").fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05))
                    Button(action: {
                        withAnimation{
                            showSignUp.toggle()
                        }
                    }, label: {
                        Text(showSignUp ? "Login" : "Sign Up").fontWeight(.bold).foregroundColor(.gray)
                        
                    })
                    
                    
                }
            }
            
        }.overlay(
            
            Image("trees").resizable().aspectRatio(contentMode: .fit)
            ,alignment: .bottom
        )
    }
}
    
    struct Transition_Preview: PreviewProvider {
        static var previews: some View {
            Transition()
        }
    }
