//
//  Background.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import Foundation
import SwiftUI

extension View {
    
    var addBackground: some View {
        modifier(Background())
    }
}

struct Background: ViewModifier {
    
    func body(content: Content) -> some View {
        
        ZStack {
            
            Rectangle()
                .foregroundStyle(Color.black)
                .ignoresSafeArea(.all)
            
            VStack {
                
                content
            }
        }
    }
}

