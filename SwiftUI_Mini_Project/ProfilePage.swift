//
//  ProfilePage.swift
//  SwiftUI_Mini_Project
//
//  Created by 박종훈 on 2021/07/12.
//

import SwiftUI

struct ProfilePage: View {
    @State private var imageArray:Array<String> = ["Chat", "ToDoList", "GoogleMap", "Game"]
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            ForEach(imageArray, id: \.self) {image in
                                Image("\(image)").resizable().frame(width: 250, height: 250)
                            }
                        }
                    }.frame(width: 300, height: 300).navigationTitle("Project")
                }.frame(height: 400)
                Spacer()
                NavigationView {
                    VStack(alignment: .leading, spacing: 5.0) {
                        Link("Github",
                              destination: URL(string: "https://github.com/ParkJong-Hun")!)
                        Link("Blog",
                             destination: URL(string: "https://blog.naver.com/exoci")!)
                    }.navigationTitle("WebSite")
                }
            }.navigationBarTitle(Text("My Profile"), displayMode: .inline)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
