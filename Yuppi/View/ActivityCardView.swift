//
//  Activity_card.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import SwiftUI

struct ActivityCardView: View {
    
    var activityCard: ActivityCard
    
    var colors:  [String: Color] = [
        "red": Color(UIColor.systemRed),
        "blue": Color(UIColor.systemBlue),
        "green": Color(UIColor.systemGreen),
        "yellow": Color(UIColor.systemYellow),
        "orange": Color(UIColor.systemOrange),
        "pink": Color(UIColor.systemPink),
        "gray": Color(UIColor.systemGray)
        ]
    
    var body: some View {
        VStack{
            HStack{
                Text("\(Image(systemName: activityCard.image!))")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                Spacer()
            }.padding(.top, 20.0)
                .padding(.leading)
            HStack{
                Text("")
            }
            HStack{
                Text(activityCard.name!)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Spacer()
            }.padding(.bottom, 30.0)
                .padding(.leading)
        }
        .frame(width: 160,height: 120)
        .background(RoundedRectangle(cornerRadius: 25))
        .foregroundColor(colors[activityCard.cardColor!])
        .contextMenu(menuItems: {
            if(!(ActivityViewModel.shared.basicActivities.contains(activityCard))){
                Button(role: .destructive) {
                ActivityViewModel.shared.deleteActivity(activityToDelete: activityCard)
            }
        label: {
            Label("Delete", systemImage: "trash")
        }
            }
        })
    }
}
