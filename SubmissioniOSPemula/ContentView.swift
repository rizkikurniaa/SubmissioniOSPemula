//
//  ContentView.swift
//  SubmissioniOSPemula
//
//  Created by RIZKI on 27/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HouseStylingList()
                 .tabItem {
                     Image(systemName: "house.fill")
                     Text("Community")
             }
             Profile()
                 .tabItem {
                     Image(systemName: "person.fill")
                     Text("Profile")
             }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
