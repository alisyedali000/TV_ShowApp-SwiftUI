//
//  ExpandableText.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import SwiftUI

struct ExpandableText: View {
    
    @State var isExpanded = false
    var text : String
    
    var body: some View {

            let overView = text.replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression)
            
            return VStack(alignment: .leading, spacing: 0) {
                Text(overView)
                    .font(.system(size: 16))
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.leading)
                    .lineLimit(isExpanded ? nil : 3)
                
            
                    Button{
                    
                        withAnimation(.interpolatingSpring) {
                            isExpanded.toggle()
                        }
                        
                    } label :{
                        Text(isExpanded ? "Show Less" : "Read More")
                            .foregroundColor(.orange)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(Color.orange)
                    }
                
            }.padding(.vertical,10)
        
    }
}

#Preview {
    ExpandableText(text: "Hello welcome home")
}
