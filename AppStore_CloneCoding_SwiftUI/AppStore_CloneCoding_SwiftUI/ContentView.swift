//
//  ContentView.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FinanceView(
            advertisement: FinanceAdvertisementModel.dummy(),
            grades: FinanceGradeModel.essentialDummy() 
        )
    }
}

#Preview {
    ContentView()
}
