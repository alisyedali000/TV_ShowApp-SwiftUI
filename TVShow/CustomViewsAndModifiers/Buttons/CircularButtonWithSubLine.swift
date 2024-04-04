//
//  CircularButtonWithSubLine.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import SwiftUI

struct CircularButtonWithSubLine: View {
    
    var subLine : String
    var image : Image
    
    var body: some View {
        VStack{
            
            Button {
                
            }label: {
                
                VStack(spacing : 10){
                    Circle()
                        .foregroundStyle(Color.gray.opacity(0.8))
                        .frame(width: 50)
                        .overlay(
                            image
                                .foregroundStyle(Color.white)
                        )
                    
                    Text(subLine)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(Color.gray.opacity(0.7))
                        
                }
                
            }
            
        }
    }
}

#Preview {
    CircularButtonWithSubLine(subLine: "I like it", image: Image(systemName: "hand.thumbsup"))
}
