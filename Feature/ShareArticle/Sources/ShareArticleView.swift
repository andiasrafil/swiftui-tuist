
import SwiftUI

public struct ShareArticleView: View {
    public init() { }
    @StateObject var store: ShareArticleVM = .init()
    
    public var body: some View {
        Text("ShareArticle feature")
    }
}
