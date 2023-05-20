//
//  Activity_creation_view.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 26/10/22.
//

import SwiftUI

struct Activity_creation_view: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            HStack{
                Button{
                    dismiss()
                }label: {
                    Text("Cancel")
                }.padding(.trailing, 265)
                Button{
                    
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
                    Text("Duration")
                    Spacer()
                    Text("25 minutes")
                        .foregroundColor(.gray)
                }
                
            }
            Spacer()
            Text("Select color")
                .padding(.trailing, 255)
            Spacer()
                List{
                    VStack{
                        HStack{
                            Circle()
                                .foregroundColor(.red)
                                .frame(maxWidth: 50, maxHeight: 50)
                                //.padding()
                            Circle()
                                .foregroundColor(.orange)
                                .frame(maxWidth: 50, maxHeight: 50)
                                //.padding()
                            Circle()
                                .foregroundColor(.yellow)
                                .frame(maxWidth: 50, maxHeight: 50)
                               // .padding()
                            Circle()
                                .foregroundColor(.green)
                                .frame(maxWidth: 50, maxHeight: 50)
                               // .padding()
                            Circle()
                                .foregroundColor(.blue)
                                .frame(maxWidth: 50, maxHeight: 50)
                               // .padding()
                        }
                        HStack{
                            Circle()
                                .foregroundColor(.indigo)
                                .frame(maxWidth: 50, maxHeight: 50)
                                //.padding()
                            Circle()
                                .foregroundColor(.purple)
                                .frame(maxWidth: 50, maxHeight: 50)
                                //.padding()
                            Circle()
                                .foregroundColor(.brown)
                                .frame(maxWidth: 50, maxHeight: 50)
                                //.padding()
                            Circle()
                                .foregroundColor(.gray)
                                .frame(maxWidth: 50, maxHeight: 50)
                               // .padding()
                            Circle()
                                .foregroundColor(.black)
                                .frame(maxWidth: 50, maxHeight: 50)
                                //.padding()
                            
                        }.padding()
                    }
                
            }
            Text("Select image")
                .padding(.trailing, 255)
            Spacer()
            List{
               
                VStack{
                   
                    HStack{
                        Image(systemName: "figure.walk")
                            .padding()
                        Image(systemName: "figure.american.football")
                            .padding()
                        Image(systemName: "figure.archery")
                            .padding()
                        Image(systemName: "figure.australian.football")
                            .padding()
                        Image(systemName: "figure.badminton")
                            .padding()
                        Image(systemName: "figure.barre")
                            .padding()
                    }
                    HStack{
                        Image(systemName: "figure.socialdance")
                            .padding()
                        Image(systemName: "figure.fencing")
                            .padding()
                        Image(systemName: "figure.golf")
                            .padding()
                        Image(systemName: "figure.handball")
                            .padding()
                        Image(systemName: "figure.rugby")
                            .padding()
                        Image(systemName: "gamecontroller.fill")
                            .padding()
                    }
                }
            }
            
        }
    }
}

struct Activity_creation_view_Previews: PreviewProvider {
    static var previews: some View {
        Activity_creation_view()
    }
}
