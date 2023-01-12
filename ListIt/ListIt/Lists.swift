//
//  Lists.swift
//  ListIt
//
//  Created by sara ayed albogami on 15/06/1444 AH.
//


import Foundation

import SwiftUI
 // list at home
struct Blist : Identifiable {
    var id = UUID()
    var listname : String
    var img: String
    var tlists : [Tlists]?
}
   //list at section 1
// اسماء القوائم supermarket
struct Tlists : Identifiable {
    var id = UUID()
    var namelist : String
    var items : [items]?
}

/// items in
struct items : Identifiable {
    var id = UUID()
    var nitem1 : String
    var nitem2 : String
    var nitem3 : String
    
}

