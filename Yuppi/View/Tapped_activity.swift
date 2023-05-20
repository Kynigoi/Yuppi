//
//  Tapped_activity.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 28/10/22.
//

import SwiftUI

struct Tapped_activity: View {
    
    
    var body: some View {
        VStack{
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
                
                
            
        }
    }
}

struct Tapped_activity_Previews: PreviewProvider {
    static var previews: some View {
        Tapped_activity()
    }
}
