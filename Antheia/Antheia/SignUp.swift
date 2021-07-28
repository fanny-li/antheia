//
//  SignUp.swift
//  Antheia
//
//  Created by Fanny Li on 7/23/21.
//

import SwiftUI

struct SignUp : View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var password = ""
    
    var body : some View {
        NavigationView{
            ZStack{
                // Background
                Rectangle().foregroundColor(Color(red: 0.98, green: 0.93, blue: 0.80)).edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Text("Sign Up").font(.system(size: 30)).fontWeight(.bold).foregroundColor(Color(red: 0.11, green: 0.26, blue: 0.20)).kerning(1.9).frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    // User Information
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Full Name").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05)).kerning(1.0)
                        
                        TextField("James Diamond", text: $name).font(.system(size: 18, weight: .semibold)).foregroundColor(.black)
                        
                        Divider()
                    }).padding(.top, 40)
                    
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Email").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05)).kerning(1.0)
                        
                        TextField("jamesdiamond@gmail.com", text: $email
                        ).font(.system(size: 18, weight: .semibold)).foregroundColor(.black)
                        
                        Divider()
                    }).padding(.top, 20)
                    
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 8, content: {
                            Text("Birthdate").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05)).kerning(1.0)
                            DatePicker("", selection: $birthdate, displayedComponents: .date)
                            
                            
                        }).padding(.top, 20)
                        VStack(alignment: .leading, spacing: 8, content: {
                            Text("Password").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05)).kerning(1.0)
                            
                            SecureField("1234", text: $password).font(.system(size: 18, weight: .semibold)).foregroundColor(.black)
                            
                            Divider()
                        }).padding(.top, 20)
                    }
                    
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("Sign Up").font(.title3).fontWeight(.bold).foregroundColor(Color(red: 0.11, green: 0.26, blue: 0.20)).kerning(1.0).padding().background(Color(red: 0.91, green: 0.93, blue: 0.79).opacity(0.6)).cornerRadius(20).padding(.top, 40)
                        })
                    
                    
                    HStack{
                        Text("Already Member?").fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05))
                        NavigationLink(
                            destination: Login().navigationBarBackButtonHidden(true),
                            label: {
                                Text("Login").fontWeight(.bold).foregroundColor(.gray)
                            })
                    }
                    
                    
                    
                }.padding().frame(maxHeight: .infinity, alignment: .top)
            }.overlay(
                
                Image("trees").resizable().aspectRatio(contentMode: .fit)
                ,alignment: .bottom
            )
            
            
            
        }
        
        
    }
}

struct SignUp_Preview: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}


