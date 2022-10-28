//
//  Activity_card.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import SwiftUI

struct ActivityCardView: View {
    var activityCard: ActivityCard
    var body: some View {
       
        VStack{
            
            HStack{
                Text("\(Image(systemName: activityCard.imageActivity))")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                Spacer()
            }.padding(.top, 20.0)
                .padding(.leading)
            HStack{
                Text("")
            }
            HStack{
                Text(activityCard.nameActivity)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Spacer()
            }.padding(.bottom, 30.0)
                .padding(.leading)
            
        }
        .frame(width: 160,height: 120)
        .background(RoundedRectangle(cornerRadius: 25))
        .foregroundColor(activityCard.colorActivity)
    }
}

