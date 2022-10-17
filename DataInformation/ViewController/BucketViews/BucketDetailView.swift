//
//  BucketDetailView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/13/22.
//

import SwiftUI

struct BucketDetailView: View
{
    var body: some View
    {
        ZStack
        {
            Color.orange
                .ignoresSafeArea(.all)
            VStack
            {
                Image("IkeaBucket")
                Text("Hello World")
                Text("Placeholder")
            }
        }
    }
}

struct BucketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BucketDetailView()
    }
}
