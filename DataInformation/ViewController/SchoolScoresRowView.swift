//
//  SchoolScoresRowView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/25/22.
//

import SwiftUI

struct SchoolScoresRowView: View
{
    var rowSchoolScores : SchoolScrores
    var body: some View
    {
        NavigationLink(destination: SchoolScoresDetailView(detailedSchoolScores: rowSchoolScores))
        {
            HStack
            {
                Text(generateRandomEmoji(of:"Symbol"))
                    .padding()
                    .accessibilityLabel("A random emoji")
                    .accessibilityValue(generateRandomEmoji(of:""))
                VStack
                {
                    Text(rowSchoolScores.State)
                        .accessibilityLabel("The State")
                        .accessibilityLabel(rowSchoolScores.State)
                    Text("\(rowSchoolScores.totalTestTakers)")
                        .accessibilityLabel("Total Test takers")
                        .accessibilityValue("\(rowSchoolScores.totalTestTakers)")
                }
        }
        }
    }
}

struct SchoolScoresRowView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolScoresRowView(rowSchoolScores: demoSchoolScores)
    }
}
