//
//  FinanceAdvertisementView.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/27/24.
//

import SwiftUI

struct AdvertisementCell: View {
    
    let advertisement : FinanceAdvertisementModel
    
    var body: some View {
        VStack(alignment: .leading) {
            advertisementTitle
            thumbnailView
        }
        .padding()
    }
    
    var advertisementTitle: some View {
        VStack(alignment: .leading) {
            Text(advertisement.tag)
                .font(.caption)
                .foregroundColor(.blue)
            Text(advertisement.mainTitle)
                .font(.title2)
                .foregroundColor(.black)
                .lineLimit(1)
                .truncationMode(.tail)
            Text(advertisement.subTitle)
                .font(.title3)
                .foregroundColor(.gray)
        }
    }
    
    var thumbnailView: some View {
        ZStack(alignment: .bottomLeading) {
            advertisement.thumbnailImage
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .cornerRadius(10)
            
            HStack(spacing: 4) {
                advertisement.iconImage
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(12)
                
                VStack(alignment: .leading){
                    Text(advertisement.appMainTitle)
                        .font(.caption)
                        .foregroundColor(.white)
                    
                    Text(advertisement.appSubTitle)
                        .font(.caption2)
                        .foregroundColor(.white)
                }
                .lineLimit(1)
                .truncationMode(.tail)
                
                Spacer()
                
                downloadButton
                    .frame(width: 60, height: 30)
                    .background(Color.gray)
                    .cornerRadius(15)
            }
        }
    }
    
    var downloadButton: some View {
        Button {
        } label: {
            Text(advertisement.downloadState)
                .font(.caption2)
                .foregroundColor(.white)
        }
    }
}


struct FinanceAdvertisementView: View {
    let advertisement: [FinanceAdvertisementModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(advertisement, id: \.id) { item in
                    AdvertisementCell(advertisement: item)
                        .frame(width: 300)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    FinanceAdvertisementView(advertisement: FinanceAdvertisementModel.dummy())
}
