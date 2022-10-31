//
//  ContentView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/11/22.
//

import SwiftUI

struct DataView: View
{
    
    @ObservedObject var storedBuckets : BucketDataStore =
                                        BucketDataStore(buckets: loadJSON(from: "Bucket2022") as! [BucketListItem])
    @ObservedObject var schoolStore = SchoolScoresDataStore(schoolData: loadJSON(from: "schoolScores") as! [SchoolScrores])
    
    var body: some View
    {
        NavigationView
        {
            Form
            {
                Section(header: Text("Buckets"))
                {
                    ForEach(storedBuckets.buckets)
                    {
                        bucket in
                        
                        BucketRowView(rowBucket: bucket, emoji: generateRandomEmoji(of: ""))
                    }
                    .onDelete(perform: removeBucketItems)
                }
                Section(header: Text("Custom"))
                {
                    ForEach(schoolStore.schoolData.indices, id: \.self)
                    {
                        index in
                        let currentSchool = schoolStore.schoolData[index]
                        SchoolScoresRowView(rowSchoolScores: currentSchool)
                    }
                    .onDelete(perform: removeSchoolScoresItem(at:))
                }
                Section(header: Text("Project Data"))
                {
                    
                }
            }
        }
    }
    private func removeBucketItems(at offsets : IndexSet) -> Void
    {
        storedBuckets.buckets.remove(atOffsets: offsets)
    }
    private func removeSchoolScoresItem(at offset : IndexSet) -> Void
    {
        schoolStore.schoolData.remove(atOffsets: offset)
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DataView()
    }
}
