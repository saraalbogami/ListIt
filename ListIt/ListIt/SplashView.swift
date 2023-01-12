//
//  SplashView.swift
//  ListIt
//
//  Created by sara ayed albogami on 12/06/1444 AH.
//

import SwiftUI

struct SplashView: View {
    @State var isshow = false
    var body: some View {
        ZStack{
            VStack(alignment: .center){
               
                    Image("Logo")
                        .resizable()
                        .frame(width:120,height: 120)
                        .scaledToFit()
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(.gray), lineWidth: 0.8))
                        .padding()
              
                Text("Welcome to ListIt")
                    .accessibilityLabel(Text("Welcome to ListIt"))
                   // .foregroundColor(Color ("black"))
                    .font(.title)
                    .fontWeight(.semibold)
            }.padding(.bottom,500)
            
            VStack(alignment: .leading){
                HStack{
                   Image(systemName: "cart.circle")
                        .foregroundColor(Color ("blue"))
                        .font(.system(size: 50))
                        .fontWeight(.thin)
                    
                    VStack(alignment:.leading){
                        
                        Text("Make shopping trip comfortable")
                            .accessibilityLabel(Text("Make shopping trip comfortable"))
                            .foregroundColor(Color ("gray"))
                            .fontWeight(.bold)
                            .font(Font.custom("SF Pro", size: 20))
                        Text("""
Easliy find your way around the store
using the categorized grocery list
""")
                        .accessibilityLabel(Text("""
Easliy find your way around the store
using the categorized grocery list
"""))
                        .foregroundColor(Color ("gray"))
                        .fontWeight(.regular)
                        .font(Font.custom("SF Pro", size: 15))
                    }
                    .padding(.leading,1)
                    
                }.padding(.all)
                
                HStack{
                   Image(systemName: "creditcard.circle")
                        .foregroundColor(Color ("blue"))
                        .font(.system(size: 50))
                        .fontWeight(.thin)
                    
                    VStack(alignment:.leading){
                    
                        Text("Avoid impulse buying")
                            .accessibilityLabel(Text("Avoid impulse buying"))
                            .foregroundColor(Color ("gray"))
                            .fontWeight(.semibold)
                            .font(Font.custom("SF Pro", size: 20))
                        Text("""
Plan and stick to your
shopping list to save money
""")
                        .accessibilityLabel(Text("""
Plan and stick to your
shopping list to save money
"""))
                        .foregroundColor(Color ("gray"))
                        .fontWeight(.regular)
                        .font(Font.custom("SF Pro", size: 15))
                    }
                    .padding(.leading,1)
                    
                }.padding(.all)
            }
            
            HStack(alignment: .bottom){
                Button{
                    isshow.toggle()
                } label: {
                    Text("Start")
                        .accessibilityLabel(Text("Start"))
                        .frame(width: 226, height: 47)
                        .font(Font.custom("SF Pro", size: 28))
                        .fontWeight(.regular)
                }
                .buttonStyle(.borderedProminent)
                .tint(.init("blue"))
               
                .fullScreenCover(isPresented: $isshow){ContentView()}
            } .padding(.top,500)
    
        }//End of Zstack
    }//End of body
}//End of Struct View

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          // 1
            SplashView()
            .environment(\.locale, .init(identifier: "en"))
          // 2
            SplashView()
            .environment(\.locale, .init(identifier: "ar"))
        }
    }
}
