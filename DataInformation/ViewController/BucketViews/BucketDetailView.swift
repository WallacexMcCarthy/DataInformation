//
//  BucketDetailView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/13/22.
//

import SwiftUI

struct BucketDetailView: View
{
    var detailBucket : BucketListItem
    var body: some View
    {
        ZStack
        {
            Color.orange
                .ignoresSafeArea(.all)
            VStack
            {
                Text("Year: \(detailBucket.year)")
                    .accessibilityLabel("detailBucket year")
//                    .accessibilityValue(detailBucket.year)
                Image("IkeaBucket")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(detailBucket.creature)
                    .accessibilityLabel("detailBucket creature")
                    .accessibilityValue(detailBucket.creature)
                Text(detailBucket.goal)
                    .accessibilityLabel("detailBucket goal")
                    .accessibilityValue(detailBucket.goal)
                
            }
        }
    }
}

struct BucketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BucketDetailView(detailBucket: demoBucket)
    }
}
