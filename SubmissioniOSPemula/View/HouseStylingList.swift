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
    HouseStyling(houseStylingImage: "space_kerja", houseStylingName: "Set Up a Cozy Reading Spot", postBy: "Rizki Kurniawan", description: "\tNo designated reading nook? No problem. If your home doesn't have any leftover real estate to convert into a reading nook, design your formal living room to serve double duty as a cozy lounge area. Here, Heidi Caillier strategically chose furniture with fabrics and shapes that are both sophisticated and homey, perfect for entertaining or unwinding alone."),
    HouseStyling(houseStylingImage: "ruang_tamu_modern", houseStylingName: "Introduce Contrast", postBy: "Sulistya Ningrum", description: "\tTo create interesting contrast, replace one thing in an otherwise totally traditional room with something super modern, like this geometric coffee table and abstract-painted floor."),
    HouseStyling(houseStylingImage: "ruang_tamu_minimalis", houseStylingName: "Go Minimalist", postBy: "Sulistya Ningrum", description: "\tPare your stuff way down and your room will look totally different. This doubles as a makeover and spring cleaning all in one."),
    HouseStyling(houseStylingImage: "ruang_tamu_aesthetic", houseStylingName: "Rearrange Your Furniture", postBy: "Sulistya Ningrum", description: "\tSymmetry, who? Your chairs and couches don't have to line up—in fact, you don't even have to have chairs. Put your side table in the corner flanked by two sofas, and if you don't have enough arm chairs for a classic living room setup, just place floor cushions by the coffee table."),
    HouseStyling(houseStylingImage: "ruang_santai", houseStylingName: "Treat Your Windows", postBy: "Rizki Kurniawan", description: "Adding the right window treatment can make all the difference. We're especially into Roman shades with a fun pattern. \"It goes against decorating 101, but using small patterns together can be easier on the eye,\" says interior decorator Kristin Panitch, who designed this dreamy pink cloud of a bedroom."),
    HouseStyling(houseStylingImage: "ruang_minimalis", houseStylingName: "Get Inspired By Nature", postBy: "Rizki Kurniawan", description: "\tThis space is rich with texture, which creates warmth and dimension. There's also plenty of character even though it's sticking to a strict color palette. For a similarly inviting and grounded environment, get inspired by nature. Think seagrass, rattan, jute, wood, brushed concrete, and marble."),
    HouseStyling(houseStylingImage: "ruang_kerja", houseStylingName: "Simply Tidy Up", postBy: "Rizki Kurniawan", description: "\tThis probably isn't what you want to hear since we don't think of cleaning up as fun, but adding a few pieces that ease organization can make a huge difference."),
    HouseStyling(houseStylingImage: "ruang_keluarga", houseStylingName: "Opt for Statement Art", postBy: "Rizki Kurniawan", description: "\tMake a simple wall a little more exciting with oversized artwork. Choose large-scale photography or something abstract and vibrant to really make a statement."),
    HouseStyling(houseStylingImage: "ruang_keluarga_aesthetic", houseStylingName: "Install New Lighting", postBy: "Rizki Kurniawan", description: "\tIf there's anything that can single-handedly polish off a room, it's a light fixture. Case in point? That brass pendant light. It feels much more refined and sophisticated than a table lamp would and contrasts with the more traditional elements throughout the room."),
    HouseStyling(houseStylingImage: "interior_dinding", houseStylingName: "Play With Proportion", postBy: "Sulistya Ningrum", description: "\tThis exquisite living room is playing with shape and scale in so many ways—each design detail offers a universe of inspiration. Keep it simple and sleek, opt for a cool shape or color, or keep it classic with an antique."),
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
