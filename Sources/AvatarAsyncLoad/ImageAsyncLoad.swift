//
//  ImageAsyncLoad.swift
//  
//
//  Created by Ivan Konishchev on 13.12.2022.
//

import SwiftUI
import Foundation
import ViewModifiers

@available(iOS 15.0, *)
public struct  ImageAsyncLoad: View {
    var content: ImageContent
    @State var isRotated: Bool = false
    
    public init( @ViewBuilder content: () -> ImageContent) {
        self.content = content()
    }
    
  public var body: some View {
     
            content
            .circleShadow(color: .cyan,offset: 5)
                .scaleEffect(isRotated ? 0.6 : 1)
                .onTapGesture {
                    isRotated.toggle()
                    withAnimation (.spring(response: 0.4,dampingFraction: 0.3)) {
                        isRotated.toggle()
                      
                    }
                }
                
    }
}
