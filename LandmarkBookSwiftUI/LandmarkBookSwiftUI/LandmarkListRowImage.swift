//
//  LandmarkListRowImage.swift
//  LandmarkBookSwiftUI
//
//  Created by BERKAN NALBANT on 1.06.2021.
//

import SwiftUI

struct LandmarkListRowImage: View {
    
    var landmarkImageName : String
    var body: some View {
        Image(landmarkImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .leading)
    }
}

struct LandmarkListRowImage_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowImage(landmarkImageName: "pisa")
    }
}
