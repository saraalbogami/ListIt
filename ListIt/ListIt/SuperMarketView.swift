//
//  SuperMarketView.swift
//  ListIt
//
//  Created by sara ayed albogami on 18/06/1444 AH.
//
//
//import Foundation
//import CoreData
//import SwiftUI
//
//class DataController: ObservableObject {
//    
//    let container = NSPersistentContainer(name: "SupermarketList")
//    init() {
//        container.loadPersistentStores { description, error in
//            if let error = error {
//                print("Core Data failed to load: \(error.localizedDescription)")
//            }
//        }
//    }
//}
//
//
//struct superView: View {
//    @StateObject private var categoryViewModel = CategoryViewModel()
//    @State private var selectedCategories: Set<String> = []
//
//    var body: some View {
//        NavigationView {
//            List(categoryViewModel.categories, children: \.sortedSubcategories, rowContent: { row in
//                Image(systemName: selectedCategories.contains(row.id) ? "checkmark.square.fill" : "square")
//                    .resizable()
//                    .frame(width: 20, height: 20, alignment: .center)
//                    .foregroundColor(Color(UIColor.systemPink))
////                Label(row.name, systemImage: categoryViewModel.icons[row.name] ?? "")
//          
//                    .frame(width: UIScreen.main.bounds.width - 90, height: 30, alignment: .leading)
//                    .background(Color.init(.systemGray5))   //just to show how far the label stretches
//                    .foregroundColor(.blue)
//                    .font(.headline)
//                    .onTapGesture {
//                        if selectedCategories.contains(row.id) {
//                            selectedCategories.remove(row.id)
//                        } else {
//                            selectedCategories.insert(row.id)
//                        }
//                    }
//            })
//            .toolbar(content: {
//                Button(action: {
//                    let randomIndex = Int.random(in: 0...2)
//                    categoryViewModel.categories[randomIndex].subcategories?.append(Category(name: "NEW"))
//                }, label: {
//                    Image(systemName: "plus")
//                })
//            })
//            .navigationTitle("Supermarket List")
//        }
//    }
//}
//
//
//
//
//struct superView_Previews: PreviewProvider {
//    static var previews: some View {
//        superView()
//    }
//}
//
//
//struct Category: Identifiable {
//    let id = UUID().uuidString
//    var name: String
//    var subcategories: [Category]?   //this type MUST be the same as the parent
//    var sortedSubcategories: [Category]? {
//        subcategories?.sorted(by: { $0.name < $1.name })
//    }
//}
//class CategoryViewModel: ObservableObject {
//    @Published var categories = [Category]()
//
//    init() {
//        categories = [
//            Category(name: "Fruit", subcategories: [
//                Category(name: "Apple"),
//                Category(name: "Banana"),
//                Category(name: "Melon"),
//            ]),
//            Category(name: "Vegetables", subcategories: [
//                Category(name: "1"),
//                Category(name: "2"),
//                Category(name: "3"),
//            ]),
//            Category(name: "Personal Care", subcategories: [
//                Category(name: "c Out"),
//                Category(name: "b"),
//                Category(name: "n"),
//            ]),
//            Category(name: "Households", subcategories: [
//                Category(name: "w Out"),
//                Category(name: "e in "),
//                Category(name: "r out"),
//            ])
//        ].sorted(by: { $0.name < $1.name })
//    }
//}
