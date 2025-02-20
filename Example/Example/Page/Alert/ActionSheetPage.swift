//
//  ActionSheetPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/15.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ActionSheetPage : View {
    
    @State var showSheet = false
    var body: some View {
        VStack {
            Button(action: {
                self.showSheet = true
            }) {
                Text("ActionSheet")
                    .bold()
                    .font(.system(.largeTitle,
                                  design: .rounded))
                }.presentation(sheet)
        }
    }
    
    private var sheet: ActionSheet? {

       let action = ActionSheet(title: Text("Title"),
                                message: Text("Message"),
                                buttons:
        [.default(Text("Default"), onTrigger: {
            print("Default")
            self.showSheet = false
        }),.destructive(Text("destructive"), onTrigger: {
            print("destructive")
            self.showSheet = false
        }),.cancel({
            print("Cancel")
            self.showSheet = false
        })])
        
        return self.showSheet ? action:nil
    }
}

#if DEBUG
struct ActionSheetPage_Previews : PreviewProvider {
    static var previews: some View {
        ActionSheetPage()
    }
}
#endif
