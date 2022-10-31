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
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedSchool = try? encoder.encode(schoolData)
            {
                UserDefaults.standard.set(encodedSchool, forKey: "Saved School Scores")
            }
        }
    }
    
    
    
    init (schoolData : [SchoolScrores])
    {
        if let storedOnDevice = UserDefaults.standard.data(forKey: "Saved School Scores")
        {
            let decoder = JSONDecoder()
            if let savedScores = try? decoder.decode([SchoolScrores].self, from: storedOnDevice)
            {
                if (savedScores.count != 80)
                {
                    self.schoolData = savedScores
                    return
                }
            }
        }
        self.schoolData = schoolData
    }
}
