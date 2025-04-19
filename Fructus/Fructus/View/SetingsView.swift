//
//  SetingsView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct SetingsView: View {
    @Environment(\.dismiss) var presentMode
    @AppStorage("isOnBoarding") var onBoarding: Bool = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - Section 1
                    
                    GroupBox(label: SettingsLabelView(label: "Frutus", imageText: "info.circle"))
                    {
                        Divider().padding(.vertical, 5)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    
                    //MARK: - Section 2
                    
                    GroupBox(label: SettingsLabelView(label: "Customization", imageText: "paintbrush"))
                    {
                        Divider().padding(.vertical, 5)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                        Toggle(isOn: $onBoarding) {
                            Text("Restart".uppercased())
                        }
                    }
                    
                    
                    //MARK: - Section 3
                    
                    GroupBox(label: SettingsLabelView(label: "Application", imageText: "apps.iphone"))
                    {
                        Divider().padding(.vertical, 5)
                        SettingsRowView(key: "Developer", value: "Werter")
                        Divider().padding(.vertical, 2)
                        SettingsRowView(key: "Designer", value: "Robert Petras")
                        Divider().padding(.vertical, 2)
                        SettingsRowView(key: "Compatibility", value: "IOS 14")
                        Divider().padding(.vertical, 2)
                        SettingsRowView(key: "Website", linkLabel: "GitHub", linkDastination: "github.com/werter08?tab=repositories")
                        Divider().padding(.vertical, 2)
                        SettingsRowView(key: "Contacts", linkLabel: "Telegram", linkDastination: "t.me/@WerterYan")
                        Divider().padding(.vertical, 2)
                        SettingsRowView(key: "SwiftUI", value: "5")
                        Divider().padding(.vertical, 2)
                        SettingsRowView(key: "Version", value: "1.0.5")
                    }
                    
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: { Button(action: { presentMode.callAsFunction()})
                    {Image(systemName: "xmark")}
                })
            }
            .padding()
        }
    }
}

struct SetingsView_Previews: PreviewProvider {
    static var previews: some View {
        SetingsView()
    }
}
