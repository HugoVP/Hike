//
//  CustomListRowView.swift
//  Hike
//
//  Created by Hugo Vázquez Paleo on 07/12/24.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String?
    @State var rowTintColor: Color
    @State var rowLinkLabel: String?
    @State var rowLinkDestination: String?
    
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
            } else if rowLinkLabel != nil && rowLinkDestination != nil {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: nil, rowTintColor: .pink, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://credo.academy")
    }
}
