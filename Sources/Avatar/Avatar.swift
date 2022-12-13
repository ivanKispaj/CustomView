/*
 
 
 */

import SwiftUI
import ViewModifiers

//MARK: logo View
@available(iOS 13.0, *)
public struct  Avatar: View {
    var content: Image
    @State var isRotated: Bool = false
    
    public init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
    
    public var body: some View {
        
        content
            .circleShadow()
            .scaleEffect(isRotated ? 0.6 : 1)
            .onTapGesture {
                isRotated.toggle()
                withAnimation (.spring(response: 0.4,dampingFraction: 0.3)) {
                    isRotated.toggle()
                    
                }
            }
        
    }
}
