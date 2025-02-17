
import SwiftUI

public struct EbookView: View {
    public init() { }
    @StateObject var store: EbookVM = .init()
    
    public var body: some View {
        Text("Ebook feature")
    }
}
