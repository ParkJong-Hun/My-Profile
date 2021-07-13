//
//  ContentView.swift
//  SwiftUI_Mini_Project
//
//  Created by 박종훈 on 2021/07/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MainPage()
            
            //footer
            Text("copyright ©PJH all rights reserved")
                .font(.footnote)
                .foregroundColor(Color.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
