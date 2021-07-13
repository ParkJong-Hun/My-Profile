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
                //Project
                NavigationView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            ForEach(imageArray, id: \.self) {image in VStack {
                                Image("\(image)").resizable().frame(width: 180, height: 180).clipShape(RoundedRectangle(cornerRadius: 60))
                                Button("\(image)", action:{})
                                }
                            }
                        }
                    }.frame(width: 300, height: 300).navigationTitle("Project")
                }.frame(height: 400)
                
                Spacer()
                
                //WebSite
                NavigationView {
                    VStack(alignment: .leading, spacing: 10.0) {
                        Link("GitHub",
                             destination: URL(string: "https://github.com/ParkJong-Hun")!).font(.title)
                        Link("Blog",
                             destination: URL(string: "https://blog.naver.com/exoci")!).font(.title)
                    }.navigationTitle("WebSite").offset(x: -130, y:-35)
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
