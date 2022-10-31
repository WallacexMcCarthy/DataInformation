//
//  AddBucketListItemView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/31/22.
//

import SwiftUI

struct AddBucketListItemView: View
{
    @ObservedObject var storedBuckets : BucketDataStore
    @Environment(\.dismiss) var dismiss
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
            if (!author.isEmpty && !bucketListItem.isEmpty)
            {
                Button("", action:addBucketItemToDataStore)
                    .padding(.horizontal, 50)
            }
            
        }
    }
    
    private func addBucketItemToDataStore() -> Void
    {
        let year = Calendar.current.component(.year, from: Date())
        let newBucketListItem : BucketListItem = BucketListItem(year: year, goal: bucketListItem, creature: author)
        storedBuckets.buckets.insert(newBucketListItem, at: 0)
        dismiss()
    }
}

//struct AddBucketListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddBucketListItemView()
//    }
//}
