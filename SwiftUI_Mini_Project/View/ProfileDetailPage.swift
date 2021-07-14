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
                    HStack {
                        Text("Name:")
                        Text("Park JongHun").bold()
                    }.font(.title2)
                    HStack {
                        Text("Birth:")
                        Text("01/06/1999")
                    }
                    HStack {
                        Text("Email:")
                        Text("thesn515@gmail.com")
                    }
                    HStack {
                        Text("Job:")
                        Text("Mobile Developer")
                    }
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
