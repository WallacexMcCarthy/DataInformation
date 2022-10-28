//
//  SchoolScoresDataStore.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/27/22.
//

import Foundation
import Combine

class SchoolScoresDataStore : ObservableObject
{
    @Published var schoolData : [SchoolScrores]
    
    init (schoolData : [SchoolScrores])
    {
        self.schoolData = schoolData
    }
}
