
import SwiftUI

public struct BookmarkView: View {
    public init() { }
    @StateObject var store: BookmarkVM = .init()
    
    public var body: some View {
        Text("Bookmark feature")
    }
}
