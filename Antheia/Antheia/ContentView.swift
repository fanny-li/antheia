//
//  ContentView.swift
//  Antheia
//
//  Created by Fanny Li on 7/17/21.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        Login()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Login : View {
    var body: some View {
        
        ZStack {
            // background
            Rectangle().foregroundColor(Color(red: 0.31, green: 0.67, blue: 0.41)).opacity(0.6).edgesIgnoringSafeArea(.all)
            ZStack{
                Circle().foregroundColor(Color(red: 0.92, green: 0.82, blue: 0.72)).scaleEffect(0.8)
                VStack{
                    
                    // Sign Up Button
                    Button(action: {}, label: {
                        Text("Sign Up").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center).padding(.all, 10).padding(.horizontal, 50).background(Color(red: 0.87, green: 0.59, blue: 0.59).opacity(0.8)).cornerRadius(15)
                    }).padding(.bottom, 20)
                  
                    // Login Button
                    Button(action: {}, label: {
                        Text("Login").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center).padding(.all, 10).padding(.horizontal, 62).background(Color(red: 0.87, green: 0.59, blue: 0.59).opacity(0.8)).cornerRadius(15)
                    })
                    
                }
            }
            VStack{
                // Name of App
                Text("App Name").fontWeight(.heavy).font(.title).padding([.top, .bottom], 100)
            
                Spacer()
                // Image of Logo?
                Image("footprint").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.leading, 120).padding(.bottom, 100)
            
                HStack{
                    // Social Media
                    Spacer()
                    Button(action: {}, label: {
                        Image("facebook-logo").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image("insta-logo").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image("twitter-logo").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    Spacer()
                }.padding(.horizontal, 40)
          

            }
        }
    }
}
