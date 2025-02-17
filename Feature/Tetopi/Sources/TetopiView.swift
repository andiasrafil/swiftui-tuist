
import SwiftUI

public struct TetopiView: View {
    public init() { }
    @StateObject var store: TetopiVM = .init()
    
    public var body: some View {
        Text("Tetopi feature")
    }
}
