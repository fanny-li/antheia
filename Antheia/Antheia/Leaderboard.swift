//
//  Leaderboard.swift
//  Antheia
//
//  Created by Amy Ouyang on 8/1/21.
//

import SwiftUI

struct Leaderboard: View {
    var body: some View {
            ZStack() {
                // background
                Rectangle().foregroundColor(Color(red: 0.918, green: 0.816, blue: 0.718)).opacity(0.66).edgesIgnoringSafeArea(.all)
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                        Text("3rd Place").fontWeight(.heavy).font(.title).padding([.top, .bottom]).edgesIgnoringSafeArea(.all)
                        Image("fanny").resizable().aspectRatio(contentMode: .fit).frame(width: 125, height: 125, alignment: .center).cornerRadius(100)

                        VStack(alignment: .leading){
                            HStack {
                                Image("erica").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: .center).cornerRadius(100).padding(.leading, 20)
                                Spacer()
                                ZStack {
                                    Rectangle().foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965)).opacity(0.66).frame(width: 170, height: 50).padding(.horizontal, 30).background(Color(red: 0.965, green: 0.965, blue: 0.965).opacity(0.66)).cornerRadius(15).padding(.trailing, 20)
                                    Text("1st").foregroundColor(.black).font(.title3).fontWeight(.bold).multilineTextAlignment(.leading).padding(.leading, -110)
                                Text("Erica Chen").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center).padding(.trailing, 20)
                                }
                            }
                            HStack {
                                Image("amy").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: .center).cornerRadius(100).padding(.leading, 20)
                                Spacer()
                                ZStack {
                                    Rectangle().foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965)).opacity(0.66).frame(width: 170, height: 50).padding(.horizontal, 30).background(Color(red: 0.965, green: 0.965, blue: 0.965).opacity(0.66)).cornerRadius(15).padding(.trailing, 20)
                                    Text("2nd").foregroundColor(.black).font(.title3).fontWeight(.bold).multilineTextAlignment(.leading).padding(.leading, -110)
                                    Text("Amy Ouyang").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center)
                                }
                            }
                            HStack {
                                Image("fanny").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: .center).cornerRadius(100).padding(.leading, 20)
                                Spacer()
                                ZStack {
                                    Rectangle().foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965)).opacity(0.66).frame(width: 170, height: 50).padding(.horizontal, 30).background(Color(red: 0.965, green: 0.965, blue: 0.965).opacity(0.66)).cornerRadius(15).padding(.trailing, 20)
                                    Text("3rd").foregroundColor(.black).font(.title3).fontWeight(.bold).multilineTextAlignment(.leading).padding(.leading, -110)
                                Text("Fanny Li").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center).padding(.trailing, 45)
                                }
                            }
                            HStack {
                                Image("kelly").resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: .center).cornerRadius(100).padding(.leading, 20)
                                Spacer()
                                ZStack {
                                    Rectangle().foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965)).opacity(0.66).frame(width: 170, height: 50).padding(.horizontal, 30).background(Color(red: 0.965, green: 0.965, blue: 0.965).opacity(0.66)).cornerRadius(15).padding(.trailing, 20)
                                    Text("4th").foregroundColor(.black).font(.title3).fontWeight(.bold).multilineTextAlignment(.leading).padding(.leading, -110)
                                Text("Kelly Hoang").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center).padding(.trailing, 20)
                                }
                            }
                            Spacer() .frame(height: 200)

                        }
                    
                    }
                )
                
        }

    }
}

struct Leaderboard_Previews: PreviewProvider {
    static var previews: some View {
        Leaderboard()
    }
}
