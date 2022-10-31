//
//  AddBucketListItemView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/31/22.
//

import SwiftUI

struct AddBucketListItemView: View
{
//     @ObservableObject var storedBuckets : BucketDataStore
    @State var author : String = ""
    @State var bucketListItem : String = ""
    
    var body: some View
    
    {
        Form
        {
            Section(header: Text("Make a new Bucjet List Item")
                .font(.largeTitle)
                .foregroundColor(.purple)
                .multilineTextAlignment(.center))
            {
                InputField(title: "Creature", hint: "Who made this goal", result: $author)
                InputField(title: "The Goal", hint: "what is the goal", result: $bucketListItem)
            }
            
        }
    }
}

struct AddBucketListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddBucketListItemView()
    }
}
