//
//  Created by Ming on 11/6/2022.
//

import SwiftUI

public struct SwiftUImage: View {
    @Binding var name: String
    
    public init( name: Binding<String> ) {
        _name = name
    }
    
    public var body: some View {
        if name.contains("http") {
            AsyncImage(url: URL(string: name)) { image in
                image.resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
        else if name.contains("sf") {
            Image(systemName: name.replacingOccurrences(of: "sf.", with: ""))
                .resizable()
                .scaledToFit()
        }
        else {
            Image(name)
                .resizable()
                .scaledToFit()
        }
    }
}
