//
//  ContentView.swift
//  Revenge-Boom
//
//  Created by Mattia Ferrara on 24/10/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var activityVM = ActivityViewModel.shared
    @ObservedObject var kidVM = KidsViewModel.shared2
    @State private var activityTipe = 0
    @State var presentPopup = false
    @State var isVisible = false
    @State var colors : [Color] = [Color(UIColor.systemBlue),Color(UIColor.systemGreen),Color(UIColor.systemRed),Color(UIColor.systemYellow),Color(UIColor.systemOrange),Color(UIColor.systemPink)]
    let myRange: ClosedRange = 1...7
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    
    var body: some View {
        
        TabView {
            
            NavigationView{
                ScrollView{
                    VStack{
                        Picker("What kind of activity?", selection: $activityTipe) {
                            Text("Solo").tag(0)
                            Text("Group").tag(1)
                        }
                        .pickerStyle(.segmented)
                        .padding()
                        LazyVGrid(columns: layout){
                            if activityTipe == 0{
                                ForEach(activityVM.savedActivities){
                                    activity in
                                    if(activity.numberOfParticipants == 1){
                                        Button {
                                            self.isVisible.toggle()
                                        } label: {
                                            ActivityCardView(activityCard: activity)
                                        }
                                    }
                                }
                            } else {
                                ForEach(activityVM.savedActivities){
                                    activity in
                                    if(activity.numberOfParticipants > 1){
                                        Button {
                                            self.isVisible.toggle()
                                        } label: {
                                            ActivityCardView(activityCard: activity)
                                        }
                                    }
                                }
                            }
                        }.navigationTitle("Activities")
                            .padding()
                    }.toolbar{
                        Button{
                            presentPopup = true
                            
                        }label: {
                            Image(systemName: "plus")
                            
                        }.popover(isPresented: $presentPopup){
                            Activity_creation_view2()
                        }
                    }
                    
                }
                .tabItem{
                    Image(systemName: "flag.checkered")
                    Text("Activities")
                    
                }
                
                
                NavigationView{
                }
                .tabItem{
                    Image(systemName: "text.book.closed")
                    Text("Tips")
                }
                NavigationView{
                }
                .tabItem{
                    Image(systemName: "list.bullet.clipboard")
                    Text("Statistics")
                }
            }
        }
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
