//
//  HouseStylingDetail.swift
//  SubmissioniOSPemula
//
//  Created by RIZKI on 27/06/22.
//

import SwiftUI

struct HouseStylingDetail: View {
    var houseStyling:  HouseStyling = houseStylings[0]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Image(houseStyling.houseStylingImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.size.width - 10, height: UIScreen.main.bounds.size.height / 2.9, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                
                Text(houseStyling.houseStylingName)
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Text("Post by ")
                        .font(.system(size: 12))
                    
                    Text(houseStyling.postBy)
                        .font(.system(size: 12))
                        .foregroundColor(.darkGreen)
                }
                
                Text(houseStyling.description)
                    .font(.system(size: 14))
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct HouseStylingDetail_Previews: PreviewProvider {
    static var previews: some View {
        HouseStylingDetail(houseStyling: houseStylings[0])
    }
}
