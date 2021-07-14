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
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0.0) {
                    //Information
                    Section(header: Text("Information")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.top)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15).frame(width:300, height: 200).foregroundColor(Color(white:0.78)).opacity(0.5)
                            Image("Profile")
                                .resizable()
                                .frame(width:120, height:120)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .blendMode(.darken)
                                .offset(x:80)
                            VStack(spacing: 0) {
                            Text("Park JongHun").font(.title2).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.trailing)
                                .offset(x: -60, y: -25)
                            
                                Text("iOS Developer.\nthesn515@gmail.com")
                                    .font(.caption)
                                .multilineTextAlignment(.trailing)
                                .offset(x:-45, y: -10)
                                Button("More.", action: {})
                                    .offset(x:-20)
                            }.offset(y: 5)
                        }.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    }.padding(.top)
                    
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
                        }.frame(width: 300, height: 240)
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
