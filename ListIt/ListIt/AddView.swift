//
//  AddView.swift
//  ListIt
//
//  Created by sara ayed albogami on 14/06/1444 AH.
//


import SwiftUI

struct AddView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentationMode
    
    @State private var itemCate = ""
    @State private var itemName = ""
    @State private var isAlert = false
    
    @State  private var itmeCates :[String] =
                            [NSLocalizedString("Fruits", comment: ""),
                             NSLocalizedString("Vegetables", comment: ""),
                             NSLocalizedString("Spices", comment: ""),
                             NSLocalizedString("Personal Care", comment: ""),
                             NSLocalizedString("Household", comment: ""),
                             NSLocalizedString("Other", comment: "")]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter item name", text: $itemName)
                        .accessibilityLabel(Text("Enter item name"))
                        .disableAutocorrection(true)
                    Picker("Select Category", selection: $itemCate)
                    {
                        ForEach(itmeCates , id: \.self) { item in
                            Text(item)
                                .accessibilityLabel(Text(item))
                        }
                    }.accessibilityLabel(Text("Select Category"))
                }
                Button ("Add Item") {
                    if self.itemName == "" ||
                        self.itemCate == "" {
                        self.isAlert = true
                        return
                    }
                    let item = Items(context: self.moc)
                    item.itemName = self.itemName
                    item.itemCate = self.itemCate
                    do {
                        try self.moc.save()
                    } catch {
                        print("whoops \(error.localizedDescription)")
                    }
                }.accessibilityLabel(Text("Add Item"))
                .alert(isPresented: $isAlert) { () -> Alert in
                    Alert(title: Text("Alert").accessibilityLabel(Text("Alert")), message: Text("No text field should be empty").accessibilityLabel(Text("No text field should be empty")), dismissButton: .default(Text("Ok")))
                }
            }.navigationBarTitle(Text("Add Item"))
                .accessibilityLabel(Text("Add Item"))
        }
    }
}



struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          // 1
            AddView()
            .environment(\.locale, .init(identifier: "en"))
          // 2
            AddView()
            .environment(\.locale, .init(identifier: "ar"))
        }
    }
}

