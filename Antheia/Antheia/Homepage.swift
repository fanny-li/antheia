//
//  Homepage.swift
//  Antheia
//
//  Created by Kelly Ngoc Hoang  on 7/29/21.
//

import SwiftUI
import SwiftUICharts


struct Homepage: View {

    var body: some View {
        ZStack {
            // Background
            Rectangle().foregroundColor(Color(red: 253, green: 235, blue: 0.41)).opacity(0.51).ignoresSafeArea()
              
            VStack{
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
