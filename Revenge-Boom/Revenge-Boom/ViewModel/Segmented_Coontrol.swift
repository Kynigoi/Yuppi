//
//  Segmented_Coontrol.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import SwiftUI

struct Segmented_Coontrol: View {
    @State private var activityTipe = 0

        var body: some View {
            VStack {
                
                Picker("What kind of activity?", selection: $activityTipe) {
                    Text("Solo").tag(0)
                    Text("Group").tag(1)
                }
                .pickerStyle(.segmented)
            }.ignoresSafeArea()
        }
    }

struct Segmenter_Coontrol: PreviewProvider {
    static var previews: some View {
        Segmented_Coontrol()
        }
}
