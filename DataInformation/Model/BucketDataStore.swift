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
    
    init(buckets: [BucketListItem])
    {
        self.buckets = buckets
    }
    
}
