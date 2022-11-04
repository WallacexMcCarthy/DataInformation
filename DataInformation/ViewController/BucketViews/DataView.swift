//
//  ContentView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/11/22.
//

import SwiftUI

struct DataView: View
{
    
    @EnvironmentObject var storedBuckets : BucketDataStore
    @ObservedObject var schoolStore = SchoolScoresDataStore(schoolData: loadJSON(from: "schoolScores") as! [SchoolScrores])
    @State private var showAddBucketListItem : Bool = false
    
    @State private var searchedText : String = ""
    
    private var filteredBucketListResults : [BucketListItem]
    {
        if(searchedText.isEmpty)
        {
            return storedBuckets.buckets
        }
        else
        {
            return storedBuckets.buckets.filter
            {
                $0.goal.lowercased().contains(searchedText.lowercased()) ||
                $0.creature.lowercased().contains(searchedText.lowercased())
            }
        }
    }
    
    var body: some View
    {
        NavigationView
        {
            VStack
            {
                List
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
            .navigationTitle("Data and Information")
            .toolbar
            {
                ToolbarItem(placement: .navigationBarLeading)
                {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button(action: {self.showAddBucketListItem.toggle()} )
                    {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $showAddBucketListItem)
        {
            AddBucketListItemView()
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
            .environmentObject(BucketDataStore(buckets: loadJSON(from: "Bucket2022") as! [BucketListItem]))
    }
}
