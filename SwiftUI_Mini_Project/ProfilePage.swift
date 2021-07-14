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
        "https://serviceapi.nmv.naver.com/flash/convertIframeTag.nhn?vid=E82DD4F57917805215637C0B0B30D4E17E3B&outKey=V128a9a5cf605ab675e134929dbfca43a61235311f25ed07da4634929dbfca43a6123&width=544&height=306",
        "https://serviceapi.nmv.naver.com/flash/convertIframeTag.nhn?vid=360871052828A10620A7928155487839090E&outKey=V127a8e79d04391e2723b7e48f7778b839e76849ef1871a6c3b277e48f7778b839e76&width=544&height=306",
        "https://serviceapi.nmv.naver.com/flash/convertIframeTag.nhn?vid=540D7378A6DD45B9BC2F4AFD12B540C69622&outKey=V1210c8e3ef329158fbeb9b8333e86d086eb46d5f72bdadc6b9739b8333e86d086eb4&width=544&height=306",
        "https://youtu.be/OZYXZBlT9WU"]
    
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
            }.navigationBarTitle(Text("My Profile"), displayMode: .inline)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
