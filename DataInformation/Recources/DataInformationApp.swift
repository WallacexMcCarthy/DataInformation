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
//    @State private var storedScores : SchoolScoresDataStore = SchoolScoresDataStore(schoolData: loadJSON(from: "schoolScores") as! [SchoolScrores])
    var body: some Scene
    {
        WindowGroup
        {
            DataView()
                .environmentObject(storedBuckets)
        }
    }
}
