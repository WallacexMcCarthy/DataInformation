//
//  BucketDataStore.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/25/22.
//

import Foundation
import Combine

class BucketDataStore: ObservableObject
{
    @Published var buckets : [BucketListItem]
    {
        didSet // special thing in swift that says you cahnged me so this is what i need to do now
        {
            let encoder = JSONEncoder()
            if let encodedBuckets = try? encoder.encode(buckets) // try? means that if this codoe has an error then you will get a null not an error.
            {
                UserDefaults.standard.set(encodedBuckets, forKey: "Saved Bucets")
            }
        }
    }
    
    init(buckets: [BucketListItem])
    {
        if let storedOnDevice = UserDefaults.standard.data(forKey: "Saved Buckets")
        {
            let decoder = JSONDecoder()
            if let savedBuckets = try? decoder.decode([BucketListItem].self, from: storedOnDevice)
            {
                if (savedBuckets.count != 0)
                {
                    self.buckets = savedBuckets
                    return // Early return since we are loading data for the device
                }
            }
        }
        self.buckets = buckets
    }
    
}
