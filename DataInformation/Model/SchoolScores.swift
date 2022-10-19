//
//  SchoolScores.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/19/22.
//

import Foundation

struct schoolScrores: Codable
{
    var State : String
    var totalTestTakers : Int
    var preformingArtsGPA : Double
    var englihsGPA : Double
    var forignLanguageGPA : Double
    var mathematicsGPA : Double
    var naturalSciencesGPA : Double
    var socialSciencesGPA : Double
    var femaleTestTakers : Int
    var maleTestTakers : Int
}
