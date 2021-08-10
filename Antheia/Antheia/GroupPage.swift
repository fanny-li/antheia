//
//  GroupPage.swift
//  Antheia
//
//  Created by Fanny Li on 8/7/21.
//

import SwiftUI
struct GroupPage: View{
    
    @State var addGroup = false
    @State var numOfGroups = 1
    var body: some View{
        NavigationView{
        ZStack{
            Rectangle().foregroundColor(Color(red: 0.76, green: 0.88, blue: 0.77)).edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack{
                    Text("Group 1").fontWeight(.semibold).font(.system(size: 24)).kerning(1.0).frame(maxWidth: 310, alignment: .leading)
                    ZStack{
                        NavigationLink(
                            destination: OpenGroupPage().navigationBarHidden(true),
                            label: {
                                Rectangle().foregroundColor(.white).frame(width: 310, height: 145, alignment: .center).cornerRadius(20)
                            })
                        
                    }
                }.padding([.top, .bottom])
                if addGroup{
                    VStack{
                        Text("Group \(numOfGroups)").fontWeight(.semibold).font(.system(size: 24)).kerning(1.0).frame(maxWidth: 310, alignment: .leading)
                        ZStack{
                            NavigationLink(
                                destination: OpenGroupPage().navigationBarHidden(true),
                                label: {
                                    Rectangle().foregroundColor(.white).frame(width: 310, height: 145, alignment: .center).cornerRadius(20)
                                })
                        }
                    }
                }
                
                HStack{
                    Button(action: {
                        self.addGroup = true
                        self.numOfGroups += 1
                    }, label: {
                        HStack{
                            Image(systemName: "plus")
                            Text("Add Group")
                        }
                    })
                    
                    
                }.padding()
                Spacer()
                Image("co-tree").resizable().aspectRatio(contentMode: .fit).frame(width: 200)
                
            }
//            .frame(maxHeight: .infinity, alignment: .top).padding(.top)
            
            
        }
        }.navigationBarHidden(true)
    }
}
struct GroupPage_Preview: PreviewProvider{
    static var previews: some View{
        GroupPage()
    }
}
