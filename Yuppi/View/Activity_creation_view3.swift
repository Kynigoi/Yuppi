//
//  Activity_creation_view3.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 27/10/22.
//

import SwiftUI

struct Activity_creation_view3: View {
    var colors : [Color] = [.red , .orange , .yellow , .green , .blue , .indigo , .purple , .brown , .gray , .black]
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button(action: {
                        print("Pressed!")
                    }){
                        Image(systemName: "globe")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.gray)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                //.frame(width: 300, height: 500)
                
                HStack{
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        print("Pressed!")
                    }){
                        Text("")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }.background(.white)
    }
}
    


struct Activity_creation_view3_Previews: PreviewProvider {
    static var previews: some View {
        Activity_creation_view3()
    }
}
