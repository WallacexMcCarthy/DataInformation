//
//  schoolScoresDetailView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/25/22.
//

import SwiftUI

struct SchoolScoresDetailView: View
{
    var detailedSchoolScores : SchoolScrores
    
    var body: some View
    {
        VStack
        {
            Text("School Scores Item Detail")
            HStack
            {
                Text("State:\n\(detailedSchoolScores.State)")
                    .padding()
                    .accessibilityLabel("School Scores Item Title")
                    .accessibilityValue("School Scores Item Detail")
                VStack
                {
                    Text("Total Test Takers: \(detailedSchoolScores.totalTestTakers)")
                        .accessibilityLabel("Total Test Takers")
                        .accessibilityValue("Total Test Takers: \(detailedSchoolScores.totalTestTakers)")
                    Text("Female Test Takers: \(detailedSchoolScores.femaleTestTakers)")
                        .accessibilityLabel("Female Test Takers")
                        .accessibilityValue("Female Test Takers: \(detailedSchoolScores.femaleTestTakers)")
                    Text("Male Test Takers: \(detailedSchoolScores.maleTestTakers)")
                        .accessibilityLabel("Male Test Takers")
                        .accessibilityValue("Male Test Takers: \(detailedSchoolScores.maleTestTakers)")
                    Text("Average Preforming Arts GPA: \(detailedSchoolScores.preformingArtsGPA)")
                        .accessibilityLabel("Average Preforming Arts GPA")
                        .accessibilityValue("Average Preforming Arts GPA: \(detailedSchoolScores.preformingArtsGPA)")
                    Text("Average English GPA: \(detailedSchoolScores.englishGPA)")
                        .accessibilityLabel("Average English GPA")
                        .accessibilityValue("Average English GPA: \(detailedSchoolScores.englishGPA)")
                    Text("Average Forign Language GPA: \(detailedSchoolScores.forignLanguageGPA)")
                        .accessibilityLabel("Average Forign Language GPA")
                        .accessibilityValue("Average Forign Language GPA: \(detailedSchoolScores.forignLanguageGPA)")
                    Text("Average Mathematics GPA: \(detailedSchoolScores.mathematicsGPA)")
                        .accessibilityLabel("Average Mathematics GPA")
                        .accessibilityValue("Average Mathematics GPA: \(detailedSchoolScores.mathematicsGPA)")
                    Text("Average Natural Sciences GPA: \(detailedSchoolScores.naturalSciencesGPA)")
                        .accessibilityLabel("Average Naturarl Sciences GPA")
                        .accessibilityValue("Average Natural Sciences GPA: \(detailedSchoolScores.naturalSciencesGPA)")
                    Text("Average Social Sciences GPA: \(detailedSchoolScores.socialSciencesGPA)")
                        .accessibilityLabel("Average Social Sciences GPA")
                        .accessibilityValue("Average Social Sciences GPA: \(detailedSchoolScores.socialSciencesGPA)")
                }
            }
        }
    }
}

struct schoolScoresDetailView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SchoolScoresDetailView(detailedSchoolScores: demoSchoolScores)
    }
}
