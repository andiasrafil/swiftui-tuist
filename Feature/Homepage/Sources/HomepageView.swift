
import SwiftUI

public struct HomepageView: View {
    public init() { }
    @StateObject var store: HomepageVM = .init()
    
    public var body: some View {
        Text("Homepage feature")
    }
}
