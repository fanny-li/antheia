//
//  OpenGroupPage.swift
//  Antheia
//
//  Created by Fanny Li on 8/8/21.
//

import SwiftUI
struct OpenGroupPage: View{
    
    @State var friendData: [CGFloat] = [20, 100, 80, 50, 130, 95, 180]
    
    var body: some View{
        ZStack{
            Rectangle().foregroundColor(Color(red: 0.76, green: 0.88, blue: 0.77)).edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Group 1").fontWeight(.semibold).font(.system(size: 24)).kerning(1.0).frame(maxWidth: 310, alignment: .leading)
                HStack{
                    Text("Highest Doner:")
                    Button(action: {
                       
                    }, label: {
                        Text("James").foregroundColor(.white).padding(10).background(Color(red: 0.31, green: 0.58, blue: 0.38)).cornerRadius(20)
                    })
                }.frame(maxWidth: 310, alignment: .leading)
                
          
                
                Text("Leaderboard").fontWeight(.medium).foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25)).kerning(1.0).frame(maxWidth: 310, alignment: .leading)
                HStack(spacing: 2){
                    ForEach(0..<7) { index in
                        BarView2(value: friendData[index])
                    }
                }.padding(10).background(Color.white).cornerRadius(20)
                
          
                
                HStack(spacing: 20){
                    Button(action: {}, label: {
                        Text("Fanny").foregroundColor(.white).padding(10).background(Color(red: 0.31, green: 0.58, blue: 0.38)).cornerRadius(20)
                    })
                    Button(action: {}, label: {
                        Text("Amy").foregroundColor(.white).padding(10).background(Color(red: 0.31, green: 0.58, blue: 0.38)).cornerRadius(20)
                    })
                    Button(action: {}, label: {
                        Text("Erica").foregroundColor(.white).padding(10).background(Color(red: 0.31, green: 0.58, blue: 0.38)).cornerRadius(20)
                    })
                }.frame(maxWidth: 310).padding()
                HStack(spacing: 20){
                    Button(action: {}, label: {
                        Text("Kelly").foregroundColor(.white).padding(10).background(Color(red: 0.31, green: 0.58, blue: 0.38)).cornerRadius(20)
                    })
                    Button(action: {}, label: {
                        Text("Pravin").foregroundColor(.white).padding(10).background(Color(red: 0.31, green: 0.58, blue: 0.38)).cornerRadius(20)
                    })
                    Button(action: {}, label: {
                        Text("Logan").foregroundColor(.white).padding(10).background(Color(red: 0.31, green: 0.58, blue: 0.38)).cornerRadius(20)
                    })
                }.frame(maxWidth: 310).padding(.horizontal)
                Spacer()
                
            }.padding()
            
        }
    }
}
struct BarView2: View{
    
    var value: CGFloat
    
    var body: some View {
        VStack{
            ZStack (alignment: .bottom){
                
                Capsule().frame(width: 25, height: 200).foregroundColor(Color(red: 0.94, green: 0.94, blue: 0.94))
                Capsule().frame(width: 25, height: value).foregroundColor(Color(red: 0.29, green: 0.58, blue: 0.38))
            }
            Text("Name").padding(.top, 8)
        }
    }
}

struct OpenGroupPage_Preview: PreviewProvider{
    static var previews: some View{
        OpenGroupPage()
    }
}
