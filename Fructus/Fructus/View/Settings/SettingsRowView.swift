//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct SettingsRowView: View {
    
    var key: String
    var value: String? = nil
    var linkLabel : String? = nil
    var linkDastination : String? = nil
    
    var body: some View {
        HStack {
            Text(key).foregroundStyle(.gray)
            Spacer()
            
            if let value {
                Text(value).fontWeight(.bold)
            } else if let linkLabel, let linkDastination {
                Link(linkLabel, destination: URL(string: "https://\(linkDastination)")!).fontWeight(.bold)
                Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
            } else {
                EmptyView()
            }
            
        }
        .padding(5)
      
    }
}
//
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SettingsRowView(key: "dev", value: "jone")
                .previewLayout(.fixed(width: 375, height: 50))
                .padding()
            SettingsRowView(key: "dev", linkLabel: "go", linkDastination: "doo")
                .previewLayout(.fixed(width: 375, height: 50))
                .padding()
        }
    }
}
