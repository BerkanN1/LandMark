//
//  ContentView.swift
//  LandmarkBookSwiftUI
//
//  Created by BERKAN NALBANT on 25.05.2021.
//

import SwiftUI

struct DetailsView: View {
    var choosenLandmark: Landmark
    var body: some View {
        VStack{
            MapView(coordinate: choosenLandmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height:UIScreen.main.bounds.height * 0.3)
            
            CircleImageView(image: Image(choosenLandmark.imageName))
                
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y:UIScreen.main.bounds.height * -0.15)
                .padding(.bottom,UIScreen.main.bounds.height * -0.15)
            
            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Text(choosenLandmark.name)
                    .foregroundColor(.red)
                    .font(.largeTitle)
                HStack{
                    Text(choosenLandmark.country)
                        .font(.subheadline)
                    
                    Spacer()
                    Text(choosenLandmark.category)
                        .font(.subheadline)
                }
            }).padding()
            
            Spacer()
            
        }
                                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenLandmark: londonbridgeLandmark)
    }
}
