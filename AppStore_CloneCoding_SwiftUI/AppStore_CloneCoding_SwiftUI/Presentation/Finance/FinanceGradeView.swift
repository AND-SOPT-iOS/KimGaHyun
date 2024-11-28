//
//  FinanceGradeView.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/27/24.
//

import SwiftUI

struct FinanceGradeCell: View {
    
    let grade : FinanceGradeModel
    
    var body: some View {
        HStack {
            thumbnailImage
            appTitle
            Spacer()
            downloadButton
            
        }
        .padding()
    }
    
    var thumbnailImage: some View {
        grade.iconImage
            .resizable()
            .frame(width: 90, height: 90)
            .scaledToFill()
            .cornerRadius(15)
    }
    
    
    var appTitle: some View {
        HStack {
            Text(String(grade.rank))
                .font(.body)
                .foregroundColor(.black)
            VStack {
                Text(grade.mainTitle)
                    .font(.caption)
                    .foregroundColor(.black)
                Text(grade.subTitle)
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        
    }
    
    var downloadButton: some View {
        Button {
        } label: {
            Text(grade.downloadState)
                .font(.headline)
                .foregroundColor(.blue)
                .background(Color.gray)
        }
        .cornerRadius(20)
    }
}


struct FinanceGradeView: View {
    let grade: [FinanceGradeModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(0..<grade.count / 3, id: \.self) { index in
                    VStack {
                        ForEach(0..<3) { num in
                            FinanceGradeCell(grade: grade[index * 3 + num])
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            LazyHStack(spacing: 16) {
//                ForEach(0..<grade.count / 3, id: \.self) { index in
//                    VStack {
//                        ForEach(0..<3) { num in
//                            if let grade = grade[safe: index * 3 + num] {
//                                FinanceGradeCell(grade: grade)
//                            }
//                            
//                        }
//                    }
//                    
//                }
//            }
//            .padding(.horizontal)
//        }
//    }
}

#Preview {
    FinanceGradeView(grade: FinanceGradeModel.dummy())
}
