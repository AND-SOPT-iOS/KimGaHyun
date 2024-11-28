//
//  AppListTableViewCell.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/23/24.
//

import SwiftUI

struct ChartRow: View {
    
    let app: AppModel
    
    var body: some View {
        HStack(spacing: 12) {
            iconImage
            ranking
            titleAndSubTitle
            
            Spacer()
            
            downloadButton
        }
//        .padding(.horizontal, 20)
    }
    
    
    var iconImage: some View {
        app.iconImage
            .resizable()
            .frame(width: 60, height: 60)
            .cornerRadius(12)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.clear)
                    .stroke(.black, lineWidth: 1)
                    .frame(width: 60, height: 60)
            }
    }
    
    var ranking: some View {
        VStack {
            Text(app.ranking.description)
                .font(.headline)
            Text("0")
                .foregroundStyle(.white)
                .font(.caption)
        }
    }
    
    var titleAndSubTitle: some View {
        VStack(alignment: .leading) {
            Text(app.title)
                .font(.headline)
            Text(app.subTitle)
                .font(.caption)
        }
    }
    
    var downloadButton: some View {
        Button {
            
        } label: {
            Text(app.downloadState)
                .foregroundStyle(.blue)
        }
    }
}

struct ChartListView: View {
    let apps: [AppModel]
    
    var body: some View {
        List(apps, id: \.id) { app in
            ChartRow(app: app)
        }
    }
}


#Preview {
    ChartListView(apps: AppModel.dummy())
}
