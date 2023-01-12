//
//  CategoryViewModel.swift
//  ListIt
//
//  Created by sara ayed albogami on 15/06/1444 AH.
//
//import Foundation
//import SwiftUI
//
//struct CategoryViewModel: View{
//
//    let item :[ListsModel] = [
//        .init(
//            nameList: "SuperMarket"),
//        list: [
//            .init(
//                imagename :"Super",
//                nameCate:"Fruit",
//                Cate:
//            [
//                .init(
//                    nameItem:"mango"
//                ) ,
//                .init(nameItem:"Apple"),
//                .init(nameItem:"Banana")
//
//            ])
//        ]
//
//    ]
//}
//
//var body: some View {
//    NavigationView {
//
//        ZStack {
//
//            Image("Logo")
//                .resizable()
//                .ignoresSafeArea()
//        }}}
//
//
////struct CategoryViewModel_Previews: PreviewProvider {
////    static var previews: some View {
////        CategoryViewModel()
////    }
////
////}
//
//
//
//
////
////struct Category: Identifiable {
////    let id = UUID().uuidString
////    var name: String
////    var subcategories: [Category]?   //this type MUST be the same as the parent
////    var sortedSubcategories: [Category]? {
////        subcategories?.sorted(by: { $0.name < $1.name })
////    }
////}
////class CategoryViewModel: ObservableObject {
////    @Published var categories = [Category]()
////
////    init() {
////        categories = [
////            Category(name: "Fruit", subcategories: [
////                Category(name: "Apple"),
////                Category(name: "Banana"),
////                Category(name: "Melon"),
////            ]),
////            Category(name: "Vegetables", subcategories: [
////                Category(name: "1"),
////                Category(name: "2"),
////                Category(name: "3"),
////            ]),
////            Category(name: "Personal Care", subcategories: [
////                Category(name: "c Out"),
////                Category(name: "b"),
////                Category(name: "n"),
////            ]),
////            Category(name: "Households", subcategories: [
////                Category(name: "w Out"),
////                Category(name: "e in "),
////                Category(name: "r out"),
////            ])
////        ].sorted(by: { $0.name < $1.name })
////    }
////}
////struct CategoryViewModel_Previews: PreviewProvider {
////    static var previews: some View {
////        CategoryViewModel()
////    }
////}
