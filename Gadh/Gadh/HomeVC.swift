//
//  HomeVC.swift
//  Gadh
//
//  Created by abdullah FH  on 21/12/1442 AH.
//

import SwiftUI

struct HomeVC: View {
    @State private var showingPopover = false
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.width
    let AllImages : [images] = [images(id: 1, imageName: "1"),images(id: 4, imageName: "4"),images(id: 3, imageName: "3"),images(id: 5, imageName: "5"), images(id: 6, imageName: "6"),images(id: 7, imageName: "7"),images(id: 8, imageName: "8")]
    var body: some View {
        ZStack{
            Color(.white).edgesIgnoringSafeArea(.all)
            VStack{
               
                Spacer()
                VStack{
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 10){
                            ForEach(AllImages, id: \.id) { IMG in
                                TobImageView(image: IMG)
                            }
                        }
                    })
                    .frame(width: width, height: 200)
                    .padding()
                    Spacer()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing : 30) {
                            ForEach(AllImages, id: \.id) { IMG in
                                GeometryReader { geometry in
                                    ImageView(image: IMG)
                                        .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -20), axis: (x: 20, y: 10.0, z: 20))
                                }.frame(width: width - 10 , height : 400)
                            }
                        }
                        .padding(30)
                        .padding(.bottom,30)
                    }
                    
                  

                    Spacer()
                }
                
            }
        }
    }
}

struct HomeVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeVC()
    }
}


struct images {
    var id : Int
    let imageName : String
}

struct ImageView:View {
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.width
    let image : images
    var body: some View {
        VStack{
            Image("\(image.imageName)")
                .resizable()
                .frame(width: width - 10, height: 400)
                .cornerRadius(20)
        }
    }
}


struct TobImageView:View {
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.width
    let image : images
    var body: some View {
        VStack{
            Image("\(image.imageName)")
                .resizable()
                .frame(width: width, height: 200)
                .shadow(radius: 3)
                .cornerRadius(20)
        }
    }
}


