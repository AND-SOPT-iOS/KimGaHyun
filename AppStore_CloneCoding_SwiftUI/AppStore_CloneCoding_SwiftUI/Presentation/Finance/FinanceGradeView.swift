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
        .padding(8)
    }
    
    var thumbnailImage: some View {
        grade.iconImage
            .resizable()
            .frame(width: 50, height: 50)
            .scaledToFill()
            .cornerRadius(10)
    }
    
    
    var appTitle: some View {
        HStack {
            Text(String(grade.rank))
                .font(.body)
                .foregroundColor(.black)
            VStack(alignment: .leading) {
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
                .font(.caption)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(Color.gray).opacity(0.8)
        .frame(width: 50, height: 20)
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
}
