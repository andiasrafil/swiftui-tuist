
import SwiftUI

public struct DetailArticleView: View {
    public init() { }
    @StateObject var store: DetailArticleVM = .init()
    
    public var body: some View {
        Text("DetailArticle feature")
    }
}
