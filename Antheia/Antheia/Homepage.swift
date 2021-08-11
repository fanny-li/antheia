//
//  Homepage.swift
//  Antheia
//
//  Created by Kelly Ngoc Hoang  on 8/5/21.
//

import SwiftUI
import SwiftUICharts


struct Homepage: View {
    
    /// Conforms to CDSideMenuConfigurator protocol
        func createConfiguration() -> CDSideMenuConfiguration {


            /// Creating the left menu items, with SF Symbols for images
            var menuItems = [CDSideMenuItem]()
            menuItems.append(CDSideMenuItem(title: "Home", sfImage: "house", view: AnyView(HomeView())))

            NotificationCenter.default.addObserver(forName: Notification.Name(CDSideMenuNotification.logout.rawValue),
                                                   object: nil, queue: nil, using: self.didLogout)
            
            do {
               
                /// Choice #1 : Default configuration
                return try CDSideMenuConfiguration(accountViewHidden: true, menuItems: menuItems)
            
                
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
    

    var body: some View {
        
        ZStack {
            // Background
            Rectangle().foregroundColor(Color(red: 253, green: 235, blue: 0.41)).opacity(0.51).ignoresSafeArea()
              
            VStack{
                
                // Hamburger Menu
                NavigationLink(destination: CDSideMenuMainView()
                    .environmentObject(createConfiguration()), label: {
                                    Image("hamburger_menu")
                                            .font(.system(.subheadline, design: .monospaced))
                                })
                Spacer()
                    .frame(height: 10.0)
                
                
                // Current Pool
                CardView {
                    Text("Current Pool")
                        .font(.system(size: 24))
                    Text("$50")
                        .bold()
                        .font(.system(size: 36))
                        .tracking(0.38)
                }.frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    
                Spacer()
                
                Group {
                    
                    VStack {
                        //Piechart
                        Image("pie")
                        
                        HStack{
                                Image("tag-fanny")
                                Image("tag-erica")
                                Image("tag-amy")
                                Image("tag-kelly")
                            }
                    }
                 
                }
                    
                    
                    
                    Spacer()
                    // Suggestion
                    CardView {
                        Text("What you can do today:")
                            .bold()
                            .font(.system(size: 24))
                        Text("Cycle to work")
                            .font(.system(size: 18))
                        Text("Pack a water bottle")
                            .font(.system(size: 18))
                        Text("Eat local food")
                            .font(.system(size: 18))

                    }.frame(width: 380, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    // forest
                    Image("forest")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 367, height: 109)
                        .clipped()
                    .frame(width: 367, height: 109)
                }
                
            }
        }
        
       
    }


struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
