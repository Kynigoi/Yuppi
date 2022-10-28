//
//  Tab_Bar.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import SwiftUI

struct Tab_Bar: View {
    
    var body: some View {
            TabView {
                Text("")
                
                    .tabItem {
                        Image(systemName: "flag.checkered")
                        Text("Activity")
                    }
                
                Text("")
                
                    .tabItem {
                        Image(systemName: "text.book.closed")
                        Text("Tips")
                    }
                
                Text("")
                
                    .tabItem {
                        Image(systemName: "list.bullet.clipboard.fill")
                        Text("Statistics")
                    }
                
            }

    }
}



struct Tab_Bar_Previews: PreviewProvider {
    static var previews: some View {
        Tab_Bar()
    }
}
