//
//  Profile.swift
//  SubmissioniOSPemula
//
//  Created by RIZKI on 27/06/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView{
            VStack(spacing:14){
                Image("rizki")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                VStack(spacing:5){
                    Text("Rizki Kurniawan")
                        .font(.title3)
                        .bold()
                    
                    Text("Android and iOS Developer")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("Hi, I'm Rizki Kurniawan. I am an Android and iOS developer. I like to learn new things every day.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 20.0)
                
                
            }
            .padding(.vertical, 30.0)
        }
        .padding()
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
