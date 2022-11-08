//
//  Utilities.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/17/22.
//

import Foundation


//MARK: - Preview Values
let demoBucket : BucketListItem = BucketListItem(year: 1999, goal: "Take over the world, Narf!!", creature: "Ikea Bucket Hat")
let demoSchoolScores : SchoolScrores = SchoolScrores(State: "Utah", totalTestTakers: 1_000, preformingArtsGPA: 3.31, englishGPA: 3.65, forignLanguageGPA: 3.69, mathematicsGPA: 3.92, naturalSciencesGPA: 3.87, socialSciencesGPA: 3.62, femaleTestTakers: 450, maleTestTakers: 550)


//MARK: - Internal URLS for files
let randomInfoURL = Bundle.main.url(forResource: "randoness", withExtension: "pdf")!
let dataViolationsURL = Bundle.main.url(forResource: "dataCollection", withExtension: "pdf")!


//MARK: - Helper Methods for Random Strings
func generateRandomEmoji (of emojiType: String) -> String
{
    let currentEmoji: String
    
    let start : Int
    let range : Int
    if (emojiType == "face")
    {
        start = 0x1f601
        range = 79
    }else if (emojiType == "Symbol")
    {
        start = 0x1f680
        range = 70
    }else if (emojiType == "animal")
    {
        start = 0x1f400
        range = 52
    }else
    {
        start = 0x1F3C1
        range = 68
    }
    
    let unicodeValue = start + Int(arc4random_uniform(UInt32(range)))
    currentEmoji = UnicodeScalar (unicodeValue)?.description ?? "🫡"
    
    return currentEmoji
}

func randomString() -> String
{
    let choice = arc4random()
    
    if (choice % 4 == 0)
    {
        return "face"
    }else if (choice % 4 == 1)
    {
        return "Symbol"
    }else if (choice % 4 == 2)
    {
        return "animal"
    }else
    {
        return "random"
    }
}
//MARK: - Load JSON Data from device

func loadJSON (from file: String) -> [Any]
{
    if let dataSourceURL = Bundle.main.url(forResource: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataSourceURL)
        let decoder = JSONDecoder()
        do
        {
            if(file == "Bucket2022")
            {
                let results = try decoder.decode([BucketListItem].self, from: data)
                return results
            }else if (file == "schoolScores")
            {
                let results = try decoder.decode([SchoolScrores].self, from: data)
                return results
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    return [Any]() // major data load falure!!!!!!!!!!!!
}
