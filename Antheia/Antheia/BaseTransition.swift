//
//  Transition.swift
//  Antheia
//
//  Created by Fanny Li on 7/28/21.
//
import SwiftUI

struct BaseTransition : View{
    @State var showSignUp = true
    
    
    /// Conforms to CDSideMenuConfigurator protocol
        func createConfiguration() -> CDSideMenuConfiguration {


            /// Creating the left menu items, with SF Symbols for images
            var menuItems = [CDSideMenuItem]()
            menuItems.append(CDSideMenuItem(title: "Home", sfImage: "house", view: AnyView(Homepage())))
            menuItems.append(CDSideMenuItem(title: "Leaderboard", sfImage: "list.dash", view: AnyView(Leaderboard())))
            menuItems.append(CDSideMenuItem(title: "Calculator", sfImage: "list.dash", view: AnyView(CalculatorView())))
            menuItems.append(CDSideMenuItem(title: "Group", sfImage: "list.dash", view: AnyView(GroupPage())))
            menuItems.append(CDSideMenuItem(title: "User Profile", sfImage: "person", view: AnyView(UserProfile()), inAccountPanel: true))
            NotificationCenter.default.addObserver(forName: Notification.Name(CDSideMenuNotification.logout.rawValue),
                                                   object: nil, queue: nil, using: self.didLogout)
            
            do {
               
                /// Choice #1 : Default configuration
                //return try CDSideMenuConfiguration(accountViewHidden: true, menuItems: menuItems)
            
                return try CDSideMenuConfiguration(navigationBarHidden: false,
                                                   accountViewHidden: false,
                                                   menuBackgroundColor: .cdDarkGray,
                                                   menuForegroundColor: .white,
                                                   viewsBackgroundColor: .cdOffGreen,
                                                   menuFont: Font.system(.body, design: .rounded),
                                                   menuButtonSize: 28,
                                                   menuSizeFactor: 1.1,
                                                   menuItems: menuItems,
                                                   userData: CDUserData(userName: "James", imageUrl: "leaf"))
                
            }
            catch {
                print("CDSideMenu configuration failed. Please check your error below:")
                print(error.localizedDescription)
                print("CDSideMenu Default configuration loaded instead.")
                return try! CDSideMenuConfiguration(accountViewHidden: true, menuItems: menuItems)
            }
        }
        
        /// Conforms to CDSideMenuConfigurator protocol
        func didLogout(_ notification: Notification) {
            print("User logged out! UserData will be in notification.object")
        }
    
    var body : some View {
        NavigationView {
            
        ZStack{
            // Background
            Rectangle().foregroundColor(Color(red: 0.98, green: 0.93, blue: 0.80)).edgesIgnoringSafeArea(.all)
            
                
            VStack{
                if showSignUp {
                    SignUp().transition(.move(edge: .trailing))
                }
                else{
                    Login().transition(.move(edge: .trailing))
                }
                
                NavigationLink(destination: CDSideMenuMainView()
                    .environmentObject(createConfiguration()), label: {
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
                Spacer()
            }
            
        }.overlay(
            
            Image("trees").resizable().aspectRatio(contentMode: .fit)
            ,alignment: .bottom
        )
        }.navigationBarHidden(true)
    }
        
}
    
    struct BaseTransition_Preview: PreviewProvider {
        static var previews: some View {
            Group {
                BaseTransition()
                BaseTransition()
            }
        }
    }
