
import SwiftUI

public struct ArticleListView: View {
    public init() { }
    @StateObject var store: ArticleListVM = .init()
    
    public var body: some View {
        Text("ArticleList feature")
    }
}
