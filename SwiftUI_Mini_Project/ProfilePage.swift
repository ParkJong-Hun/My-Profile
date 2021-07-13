//
//  ProfilePage.swift
//  SwiftUI_Mini_Project
//
//  Created by 박종훈 on 2021/07/12.
//

import SwiftUI

struct ProfilePage: View {
    @State private var imageArray:Array<String> = ["Chat", "ToDoList", "GoogleMap", "Game"]
    @State private var videoURL:Array<String> = [
        "https://bit.ly/3wzKXAn",
        "https://bit.ly/3hyiMh2",
        "https://bit.ly/36zUvAK",
        "https://bit.ly/2U4EKPJ"]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 0.0) {
                    //Project
                    Section(header: Text("Proejct")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.top)) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack() {
                                ForEach(imageArray, id: \.self) {image in
                                    NavigationLink(
                                        destination:
                                            VideoPage(
                                                videoURL: $videoURL[imageArray.firstIndex(of: image)!]
                                            )
                                    ) {
                                        VStack {
                                            Image("\(image)").resizable().frame(width: 180, height: 180).clipShape(RoundedRectangle(cornerRadius: 60))
                                            Text("\(image)").foregroundColor(.black)
                                        }
                                    }
                                }
                            }
                        }.frame(width: 300, height: 300)
                    }
                    
                    //WebSite
                    Section(header: Text("Web Site")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                ) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            Link("GitHub",
                                 destination: URL(string: "https://github.com/ParkJong-Hun")!)
                            Link("Blog",
                                 destination: URL(string: "https://blog.naver.com/exoci")!)
                        }
                        .padding(.top).font(.title2)
                    }
                }
                .navigationBarTitle(Text("My Profile"), displayMode: .inline)
            }
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
