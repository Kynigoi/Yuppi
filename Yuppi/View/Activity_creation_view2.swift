//
//  Activity_creation_view2.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 26/10/22.
//

import SwiftUI

struct Activity_creation_view2: View {
    @ObservedObject var activityVM = ActivityViewModel.shared
    @Environment(\.dismiss) var dismiss

    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            HStack{
                Button{
                    dismiss()
                }label: {
                    Text("Cancel")
                }.padding(.trailing, 265)
                Button{
                    ActivityViewModel.shared.addActivity(name: "provagruppo", numberOfParticipants: 3, requiredObjects: "Si", descriptionActivity: "Sese", image: "globe", colorCard: "red")
                    dismiss()
                }label: {
                    Text("Done")
                }
            }
            List{
                HStack{
                    Text("Activity name")
                    Spacer()
                    Text("Golf")
                        .foregroundColor(.gray)
                }
                HStack{
                    Text("Number of Partecipents")
                    Spacer()
                    Text("1 or more")
                        .foregroundColor(.gray)
                }
                HStack{
                    Text("Required object")
                    Spacer()
                    Text("Golf club, ball")
                        .foregroundColor(.gray)
                }
                HStack{
                    Text("Location")
                    Spacer()
                    Text("Outdoor")
                        .foregroundColor(.gray)
                }
                
            }
            VStack{
                HStack{
                    
                }
                Text("Description")
                    .padding(.trailing, 255)
                    .bold()
                    .font(.system(size: 20))
                    .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: 380, maxHeight: 115)
                    Text("Activity description")
                        .foregroundColor(.gray)
                        .padding(.trailing, 190)
                        .padding(.bottom, 55)
                }
            }
            Text("Select Color")
                .padding(.trailing, 255.0)
                .bold()
                .font(.system(size: 20))
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 11)
            Grid{
                VStack{
                    HStack{
                        
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.red)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.orange)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.yellow)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.green)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.blue)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    HStack{
                        
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.indigo)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.purple)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.brown)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Text("")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.black)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    
                }.padding()
            }
            .frame(width: 350)
            .background(.white)
            .cornerRadius(10)
            Text("Select image")
                .padding(.trailing, 255.0)
                .font(.system(size: 20))
                .bold()
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 25)
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: 380, maxHeight: 140)
                VStack{
                    HStack{
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.run")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.archery")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.dance")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.core.training")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.basketball")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.flexibility")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    HStack{
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.gymnastics")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.pilates")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.socialdance")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.yoga")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.rugby")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            print("Pressed!")
                        }){
                            Image(systemName: "figure.soccer")
                                .frame(width: 44, height: 44)
                                .foregroundColor(Color.black)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(.horizontal , 4)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                
            }
            .cornerRadius(10)
            
            
        }
        .background(Color(red: 242/255, green: 242/255, blue: 247/255, opacity: 1.0))
        
    }
}

struct Activity_creation_view2_Previews: PreviewProvider {
    static var previews: some View {
        Activity_creation_view2()
        
    }
}
