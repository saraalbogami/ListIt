//
//  ContentView.swift
//  ListIt
//
//  Created by sara ayed albogami on 12/06/1444 AH.
//


import CoreData

import SwiftUI

struct ContentView: View {
    
    let lists : [Blist] = [
        .init(
            listname: NSLocalizedString("SuperMarket List", comment: ""),
            img: "Super",
            tlists : [
                // LIST SEC 1
                .init(
                    namelist:NSLocalizedString("Fruit", comment: "") ,
                    // LANDMARKS
                    items:
                        [
                            .init(
                                nitem1: NSLocalizedString(" ", comment: ""),
                                nitem2: NSLocalizedString(" ", comment: ""),
                                nitem3: NSLocalizedString(" ", comment: "") )
                        ]),
                // place 2
                .init(
                    namelist: NSLocalizedString("Vegetables", comment: ""),
                    items:
                        [
                            .init(
                                nitem1: NSLocalizedString(" ", comment: ""),
                                nitem2: NSLocalizedString(" ", comment: ""),
                                nitem3: NSLocalizedString(" ", comment: ""))
                            
                        ]),
            ]),
        
        //blist 3
        .init(listname: NSLocalizedString("Mall List", comment: "") , img: "Mall"),
        // blist 4
        .init(listname:NSLocalizedString("Pharmacy List", comment: "") , img: "Pharmacy"),
        // blist 5
        .init(listname:NSLocalizedString( "Car Equipment List", comment: "") , img: "Car")
    ]
    
    var body: some View {
        VStack {
            NavigationView {
                List(lists) { list in
                    NavigationLink(destination: DetailView(list1: list.tlists?.first ?? .init(namelist: ""))) {
                        ContactRow(lists: list)
                    }
                    
                }
                
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Shopping Lists")
                            .accessibilityLabel(Text("Shopping Lists"))
                            .padding(.top,60)
                            .font(Font.custom("SF Pro", size: 26)).foregroundColor(.black)
                            .fontWeight(.semibold)
                    }
                    
                    
                    
                    
                }
                .environment(\.colorScheme, .light)
            }.edgesIgnoringSafeArea(.all)
        }
    }
    struct ContactRow: View {
        @State var lists : Blist
        
        var body: some View {
            
            HStack {
                Image(lists.img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(50)
                VStack(alignment: .leading) {
                    Text(lists.listname)
                        .font(.system(size: 18, weight: .medium, design: .default))
                    
                }
            }.padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
                        static var previews: some View {
                            Group {
                                // 1
                                ContentView()
                                    .environment(\.locale, .init(identifier: "en"))
                                // 2
                                ContentView()
                                    .environment(\.locale, .init(identifier: "ar"))
                            }
                        }
                    }
