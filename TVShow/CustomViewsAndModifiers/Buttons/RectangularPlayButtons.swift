//
//  RectangularPlayButtons.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import SwiftUI

struct RectangularPlayButtons: View {
    var title : String
    var bgColor : Color
    var image : Image
    var action : () -> Void
    
    var body: some View {
        VStack{
            
            Button{
                
                action()
                
            }label: {
                
                RoundedRectangle(cornerRadius: 4)
                    .foregroundStyle(bgColor)
                    .frame(height: 50)
                    .overlay(
                        HStack{
                            image
                                .foregroundStyle(Color.white)
                            
                            Text(title)
                                .foregroundStyle(Color.white)
                                .font(.system(size: 20, weight: .medium))
                            
                        }
                    )
                
            }
            
        }
    }
}

#Preview {
    RectangularPlayButtons(title: "Play", bgColor: Color.blue, image: Image(systemName: "play.fill")) {
        
    }
}
