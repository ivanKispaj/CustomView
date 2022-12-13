//
//  ImageContent.swift
//  
//
//  Created by Ivan Konishchev on 13.12.2022.
//

import SwiftUI
@available(iOS 15.0, *)
public struct  ImageContent: View {

    private var url: String
    private var size: CGFloat
    
    public init(url: String, size: CGFloat = 40) {
        self.url = url
        self.size = size
    }
    
   
    public var body: some View {
        if let url = URL(string: self.url) {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .frame(width: size, height: size, alignment: .center)
            } placeholder: {
                ProgressView()
            }
        } else {
            Image(systemName: "photo")
        }
    }
}


