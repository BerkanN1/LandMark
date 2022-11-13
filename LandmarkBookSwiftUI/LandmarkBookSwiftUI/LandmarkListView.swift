//
//  LandmarkListView.swift
//  LandmarkBookSwiftUI
//
//  Created by BERKAN NALBANT on 1.06.2021.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView{
            List(landmarkArray){ landmark in
                NavigationLink( destination: DetailsView(choosenLandmark: landmark)){
                    LandmarkListRow(lanmark: landmark)
                }
            }.navigationBarTitle(Text("Landmark Book"))
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
