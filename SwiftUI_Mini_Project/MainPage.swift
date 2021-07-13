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
                Slider(
                    value: $sliderValue,
                    in: 0...100
                ) {_ in
                    if(sliderValue >= 90) {
                        isOn = true
                    } else {
                        isOn = false
                    }
                    sliderValue = 0.0
                }.padding(.top).frame(width: 300, height: 0, alignment: .trailing)
                Text("Slide Me")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                NavigationLink(
                    destination: ProfilePage(),
                    isActive: $isOn
                ) {
                    EmptyView()
                }
            }.navigationBarTitle(Text("Main"), displayMode: .inline).navigationBarHidden(true)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
