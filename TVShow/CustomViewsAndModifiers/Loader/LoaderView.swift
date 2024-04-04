//
//  LoaderView.swift
//  TVShow
//
//  Created by Ali Syed on 04/04/2024.
//

import SwiftUI

struct LoaderView: View {
    @Binding var isLoading : Bool
    
    var body: some View {
        VStack {
            
            if isLoading {
                
                ZStack {
                    
                    Color.black.opacity(0.35)
                        .edgesIgnoringSafeArea(.all)
                    
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                        .tint(.white)
                      
                    
                }
            }
        }
    }
}

#Preview {
    LoaderView(isLoading: .constant(true))
}
