//
//  DataInformationApp.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/11/22.
//

import SwiftUI

@main
struct DataInformationApp: App
{
    @StateObject private var storedBuckets : BucketDataStore =
    BucketDataStore(buckets: loadJSON(from: "Bucket2022") as! [BucketListItem])
    var body: some Scene
    {
        WindowGroup
        {
            DataView()
                .environmentObject(storedBuckets)
        }
    }
}
