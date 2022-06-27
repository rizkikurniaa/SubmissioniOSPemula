//
//  HouseStylingList.swift
//  SubmissioniOSPemula
//
//  Created by RIZKI on 27/06/22.
//

import SwiftUI


extension Color {
    static let darkGreen = Color("DarkGreenColor")
}

var houseStylings  = [
    HouseStyling(houseStylingImage: "space_kerja", houseStylingName: "Space Kerja Nyaman", postBy: "Rizki Kurniawan", description: "\tInspirasi space kerja yang modern dengan design interior yang minimalis dan nyaman. Dengan design yang minimalis, mampu  menjaga mood dan meningkatkan produktivitas dalam menjalani aktivitas."),
    HouseStyling(houseStylingImage: "ruang_tamu_modern", houseStylingName: "Ruang Tamu Modern", postBy: "Sulistya Ningrum", description: "Inspirasi ruang tamu modern dan nyaman."),
    HouseStyling(houseStylingImage: "ruang_tamu_minimalis", houseStylingName: "Ruang Tamu Minimalis", postBy: "Sulistya Ningrum", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
    HouseStyling(houseStylingImage: "ruang_tamu_aesthetic", houseStylingName: "Ruang Tamu Aesthetic", postBy: "Sulistya Ningrum", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
    HouseStyling(houseStylingImage: "ruang_santai", houseStylingName: "Inspirasi Ruang Santai", postBy: "Rizki Kurniawan", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
    HouseStyling(houseStylingImage: "ruang_minimalis", houseStylingName: "Inspirasi Ruang Minimalis", postBy: "Rizki Kurniawan", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
    HouseStyling(houseStylingImage: "ruang_kerja", houseStylingName: "Inspirasi Ruang Kerja", postBy: "Rizki Kurniawan", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
    HouseStyling(houseStylingImage: "ruang_keluarga", houseStylingName: "Inspirasi Ruang Keluarga", postBy: "Rizki Kurniawan", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
    HouseStyling(houseStylingImage: "ruang_keluarga_aesthetic", houseStylingName: "Inspirasi Ruang Keluarga Aesthetic", postBy: "Rizki Kurniawan", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
    HouseStyling(houseStylingImage: "interior_dinding", houseStylingName: "Interior Dinding", postBy: "Sulistya Ningrum", description: "Inspirasi space kerja yang modern dengan design interiror yang minimalis dan nyaman."),
]

struct HouseStylingList: View {
    
    var body: some View {
        NavigationView {
            List(houseStylings) { houseStyling in
                NavigationLink(destination: HouseStylingDetail(houseStyling: houseStyling)){
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("\(houseStyling.houseStylingName)")
                                .font(.system(size: 18, weight: .bold))
                            
                            Text("\(houseStyling.postBy)")
                                .font(.system(size: 12))
                                .foregroundColor(.darkGreen)
                        }
                        
                        Spacer()
                        
                        Image(houseStyling.houseStylingImage)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                }
            }
            .navigationBarTitle("Styling Ideas")
        }
    }
}

struct HouseStylingList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HouseStylingList()
        }
    }
}
