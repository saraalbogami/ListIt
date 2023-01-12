//
//  DetailView.swift
//  ListIt
//
//  Created by sara ayed albogami on 15/06/1444 AH.
//


import SwiftUI

struct DetailView: View {
    @State var list1: Tlists
    @State var isPressed = false
    @State var showingAddUser : Bool = false
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                    ScrollView{
                       
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.black), lineWidth: 0.5)
                                .shadow(radius: 0.1)
                                .frame(width: 350, height: 140)
                                .foregroundColor(Color(.blue))
                            VStack{
                                Text("Fruit")
                                    .padding(.bottom, 6)
                                    .padding(.trailing,285)
                                    .bold()
                                    .foregroundColor(Color("blue"))
                                    .fontWeight(.medium)
                              
                                    HStack{
                                        HStack{
                                            CheckView(title:NSLocalizedString("Apple", comment: ""))
                                        }
                                        
                                        HStack{
                                            CheckView(title:NSLocalizedString("watermelon", comment: ""))
                                        }
                                        HStack{
                                            CheckView(title:NSLocalizedString("Grabes", comment: ""))
                                        }
                                    }.padding(.trailing)
                                    
                                    .padding()
                                    HStack{
                                        HStack{
                                            CheckView(title:NSLocalizedString("Banana", comment: ""))
                                        }
                                        
                                        HStack{
                                            CheckView(title:NSLocalizedString("Orange", comment: ""))
                                        }
                                        HStack{
                                            CheckView(title:NSLocalizedString("Avocado", comment: ""))
                                        }
                                    }.padding(.trailing)
                            }

                        }
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.black), lineWidth: 0.5)
                                .shadow(radius: 0.1)
                                .frame(width: 350, height: 140)
                                .foregroundColor(Color(.blue))
                            VStack{
                                Text("Vegetables")
                                    .padding(.trailing,240)
                                    .padding(.bottom, 6)
                                    .bold()
                                    .foregroundColor(Color("blue"))
                                    .fontWeight(.medium)
                               
                                    HStack{
                                        HStack{
                                            CheckView(title: NSLocalizedString("Broccoli", comment: ""))
                                        }
                                        
                                        HStack{
                                            CheckView(title:NSLocalizedString("Tomatos", comment: ""))
                                        }
                                        HStack{
                                            CheckView(title:NSLocalizedString("Garlic", comment: ""))
                                        }
                                    }.padding(.trailing)
                                    
                                
                                .padding()
                                
                                    HStack{
                                        HStack{
                                            CheckView(title:NSLocalizedString("Carrot", comment: ""))
                                        }
                                        
                                        HStack{
                                            CheckView(title:NSLocalizedString("Lettuce", comment: ""))
                                        }
                                        HStack{
                                            CheckView(title:NSLocalizedString("Pepper", comment: ""))
                                        }
                                    }.padding(.trailing)
                                    
                                }
                            
                           }
                        ZStack{
                            
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.black), lineWidth: 0.5)
                                    .shadow(radius: 0.1)
                                    .frame(width: 350, height: 140)
                                // .position(.init(x: 200, y: 520))
                                    .foregroundColor(Color(.blue))
                                VStack{
                                    Text("Personal Care")
                                        .padding(.trailing,220)
                                        .padding(.bottom, 6)
                                        .bold()
                                        .foregroundColor(Color("blue"))
                                        .fontWeight(.medium)
                                  
                                        HStack{
                                            HStack{
                                                CheckView(title: NSLocalizedString("Shampoo", comment: ""))
                                            }
                                            
                                            HStack{
                                                CheckView(title:NSLocalizedString("Lotion", comment: ""))
                                            }
                                            HStack{
                                                CheckView(title:NSLocalizedString("Toothpaste", comment: ""))
                                            }
                                        }.padding(.trailing)
                                        
                                        .padding()
                                        HStack{
                                            HStack{
                                                CheckView(title:NSLocalizedString("Soap", comment: ""))
                                            }
                                            
                                            HStack{
                                                CheckView(title:NSLocalizedString("SunScreen", comment: ""))
                                            }
                                            HStack{
                                                CheckView(title:NSLocalizedString("Deodorant", comment: ""))
                                            }
                                        }.padding(.trailing)
                                }
                        }
                        
                        ZStack{
                            
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.black), lineWidth: 0.5)
                                    .shadow(radius: 0.1)
                                    .frame(width: 350, height: 140)
                                // .position(.init(x: 200, y: 520))
                                    .foregroundColor(Color(.blue))
                                VStack{
                                    Text("Household")
                                        .padding(.trailing,240)
                                        .padding(.bottom, 6)
                                        .bold()
                                        .foregroundColor(Color("blue"))
                                        .fontWeight(.medium)
                                  
                                        HStack{
                                            HStack{
                                                CheckView(title: NSLocalizedString("Dish soap", comment: ""))
                                            }
                                            
                                            HStack{
                                                CheckView(title:NSLocalizedString("Sponge", comment: ""))
                                            }
                                            HStack{
                                                CheckView(title:NSLocalizedString("Gloves", comment: ""))
                                            }
                                        }
                                        .padding(.trailing)
                                        
                                        .padding()
                                        HStack{
                                            HStack{
                                                CheckView(title:NSLocalizedString("Oven Cleaner", comment: ""))
                                            }
                                            
                                            HStack{
                                                CheckView(title:NSLocalizedString("Softener", comment: ""))
                                            }
                                          
                                        }.padding(.trailing)
                                }
                            
                        }
                        
                        HStack{
                            Section {
                            VStack{
                                Button(action: {
                                
                            }) {
                                Text("SAVE")
                                    .accessibilityLabel(Text("SAVE"))
                                    .frame(width: 126 , height: 35)
                                    .tint(.white)
                                    .fontWeight(.bold)
                            }
                                
                            }.buttonStyle(.borderedProminent)
                                .tint(.init("blue"))
                                .opacity((0.95))
                            VStack{    Button(action: {
                                
                            }) {
                                Text("CANCLE")
                                    .accessibilityLabel(Text("CANCLE"))
                                    .frame(width: 126 , height: 35)
                                    .tint(.white)
                                    .fontWeight(.bold)
                                
                            }
                            }.buttonStyle(.borderedProminent)
                                .tint(.init("red"))
                                .opacity((0.95))
                            
                            }.padding(.top)
                        }
                    
                        
                    
                    .environment(\.colorScheme, .light)
                
                    .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("SuperMarket List")
                            .accessibilityLabel(Text("Shopping Lists"))
                            .padding()
                            .font(Font.custom("SF Pro", size: 26)).foregroundColor(.black)
                            .fontWeight(.semibold)
                    }}
                .navigationBarItems(leading: EditButton(),
                                    trailing: Button("Add") {
                    self.showingAddUser.toggle()
                })
                .sheet(isPresented: $showingAddUser) {
                    AddView()
                }
                    }
            }.padding(.all)
            .edgesIgnoringSafeArea(.bottom)
        }.edgesIgnoringSafeArea(.all)
    
    }}
    struct CheckView: View {
        @State var isChecked:Bool = false
        @State var isPressed = false
        var title:String
        func toggle(){isChecked = !isChecked}
        var body: some View {
            Button(action: toggle){
                HStack{
                    ZStack{
                        Image(systemName:"checkmark.circle")
                            .foregroundColor(Color("blue"))
                        
                            .opacity(isPressed ? 1 : 0)
                            .scaleEffect(isPressed ? 1.0 : 0.1)
                            .foregroundColor(.blue)
                        
                        Image(systemName: "circle")
                            .foregroundColor(Color(.black))
                            .onTapGesture {
                                self.isPressed.toggle()
                            }
                            .foregroundColor(isPressed ? .blue : .black)
                    }
                    Text(title)
                        .foregroundColor(Color("gray1"))
                        .fontWeight(.medium)
                       // .foregroundColor(.black)
                }
            }}
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                // 1
                DetailView(list1: .init(namelist: ""))
                    .environment(\.locale, .init(identifier: "en"))
                // 2
                DetailView(list1: .init(namelist: ""))
                    .environment(\.locale, .init(identifier: "ar"))
            }
        }
    }

