//
//  Homepage.swift
//  Antheia
//
//  Created by Kelly Ngoc Hoang  on 7/28/21.
//

import SwiftUI
import SwiftUICharts

struct Homepage: View {
    
    @State var data1: [Double] = [50, 50, 60, 40]
    @State var showMenu = false
    
    let greenStyle = ChartStyle(backgroundColor: .white,
                                 foregroundColor: [ColorGradient(.yellow, .green)])
    var body: some View {
        
        ZStack {
            
            // Background
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.50974226, green: 0.9326363003, blue: 0.5485994581, alpha: 0.5950223962)))
                .frame(width: 375, height: 830)
                .opacity(0.5)
            
            VStack {
                
                HStack {
                    // Hambutger Menu
                    GeometryReader { geometry in ZStack(alignment: .leading) {
                        Main_View(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                            if self.showMenu {
                                MenuView()
                                    .frame(width: geometry.size.width/2)
                            }
                        }
                    }
                    
                    // Total Usage
                    Text("Total Usage: ---")
                    
                    Spacer()
                }
                .frame(height: 105.0)
                
            

                // Current Pool
                CardView {
                    Text("Current Pool").font(.system(size: 24)).tracking(0.38)
                    Text("$30").bold().font(.system(size: 36)).tracking(0.38)
                }.frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                // Piechart
                CardView {
                  ChartLabel("$$$", type: .subTitle)
                    PieChart()
                }
                .data(data1)
                .chartStyle(greenStyle)
                .frame(width:  350, height: 350)
//UIScreen.main.bounds.size.width

                Spacer()
                
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

struct Main_View: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            self.showMenu = true
        }) {
            Image("hamburger_menu")
        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
