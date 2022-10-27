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
    
    var body: some View
    {
        NavigationView
        {
            Form
            {
                Section(header: Text("Buckets"))
                {
                    
                }
                Section(header: Text("Custom"))
                {
                    
                }
                Section(header: Text("Project Data"))
                {
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DataView()
    }
}
