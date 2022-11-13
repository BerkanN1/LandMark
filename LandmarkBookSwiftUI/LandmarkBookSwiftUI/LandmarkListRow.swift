//
//  LandmarkListRow.swift
//  LandmarkBookSwiftUI
//
//  Created by BERKAN NALBANT on 1.06.2021.
//

import SwiftUI

struct LandmarkListRow: View {
    
    var lanmark : Landmark
    var body: some View {
        HStack{
            LandmarkListRowImage(landmarkImageName: lanmark.imageName)
            Text(lanmark.name)
        }
    }
}

struct LandmarkListRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRow(lanmark: londonbridgeLandmark)
    }
}
