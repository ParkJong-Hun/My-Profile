//
//  ProfileDetailPage.swift
//  SwiftUI_Mini_Project
//
//  Created by 박종훈 on 2021/07/14.
//

import SwiftUI

struct ProfileDetailPage: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Image("Profile").resizable().frame(width:230, height: 230).clipShape(RoundedRectangle(cornerRadius: 30))
                    VStack(alignment: .leading, spacing: 3.0) {
                        HStack {
                            Text("Name:")
                            Text("Park JongHun").bold()
                        }.font(.title2)
                        HStack {
                            Text("Birth:")
                            Text("06 / January / 1999")
                        }
                        HStack {
                            Text("Job:")
                            Text("Mobile Developer")
                        }
                        HStack {
                            Text("Email:")
                            Text("thesn515@gmail.com")
                        }
                        HStack {
                            Text("Education: ")
                            Text("Myonji College (2017-2021)")
                        }
                        HStack {
                            Text("Speak:")
                            Text("Korean, Japanese(JLPT N1), English, Chinese(HSK 4)").font(.caption)
                        }
                    }.frame(width:250)
                    VStack(alignment: .leading, spacing: 3.0) {
                        Text("Skills").font(.title2).bold().padding(.bottom, 5)
                        HStack {
                            Text("Main Language:")
                            Text("Java, Kotlin, Swift, JavaScript").bold()
                        }
                        HStack {
                            Text("Sub Language:")
                            Text("C, C++, C#, Python, Go, HTML, CSS, JSP, PHP")
                        }.font(.caption)
                        HStack {
                            Text("Frameworks:")
                            Text("React.js, Redux, SwiftUI")
                        }.font(.caption)
                        HStack {
                            Text("Tools:")
                            Text("Android Studio, Xcode, Git, Github, VS Code, Unity3D, Photoshop, Blender")
                        }.font(.caption)
                    }.padding(.top, 5).frame(width:250)
                }
                .padding(.top, 40)
            }.navigationBarTitle(Text("Profile Detail"), displayMode: .inline)
        }
    }
}

struct ProfileDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailPage()
    }
}
