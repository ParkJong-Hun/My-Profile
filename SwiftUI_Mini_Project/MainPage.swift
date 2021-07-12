//
//  MainPage.swift
//  SwiftUI_Mini_Project
//
//  Created by 박종훈 on 2021/07/12.
//

import SwiftUI

struct MainPage: View {
    @State private var sliderValue = 0.0
    @State private var isEditing = false
    @State private var isOn = false
    var body: some View {
        NavigationView {
            VStack {
                Image("my_logo2").resizable().aspectRatio(contentMode: .fit).frame(width:200, height:200)
                Text("My Profile")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                Slider(
                    value: $sliderValue,
                    in: 0...100
                ) {_ in
                    if(sliderValue >= 100) {
                        isOn = true
                    }
                }.frame(width: 200, height: 0, alignment: .center)
                NavigationLink(
                    destination: ProfilePage(),
                    isActive: $isOn
                ) {
                    EmptyView()
                }
            }
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
