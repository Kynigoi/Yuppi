//
//  ModalView.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 26/10/22.
//

//import SwiftUI
//
//struct ModalView: View {
//   @State private var showSheet = false
//
//   var body: some View {
//       Button("plus") {
//           showSheet.toggle()
//       }.font(.largeTitle)
//       .sheet(isPresented: $showSheet) {
//           SheetView()
//       }
//    }
//}
//
//struct SheetView: View {
//   @Environment(\.dismiss) var dismiss
//
//    var body: some View {
//        ZStack {
//           Button {
//              dismiss()
//           } label: {
//               Text("Done")
//                 .font(.title)
//                 .foregroundColor(.blue)
//           }
//         }
//         .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
//         .padding()
//    }
//}
//struct ModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalView()
//    }
//}
