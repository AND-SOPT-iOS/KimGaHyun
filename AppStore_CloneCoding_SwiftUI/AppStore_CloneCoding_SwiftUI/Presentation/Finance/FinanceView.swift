//
//  FinanceView.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/28/24.
//

import SwiftUI

struct FinanceView: View {
    
    let advertisement: [FinanceAdvertisementModel]
    let grades: [FinanceGradeModel]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                FinanceAdvertisementView(advertisement: advertisement)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(
                        rows: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())],
                        spacing: 10
                    ) {
                        ForEach(grades, id: \.id) { grade in
                            FinanceGradeCell(grade: grade)
                                .frame(width: 200, height: 70)
                        }
                    }
                    .padding(.horizontal)
                }
                
            }
        }
    }
}
