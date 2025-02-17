
import SwiftUI

public struct HomeView: View {
    public init() { }
    @StateObject var store: HomeVM = .init()
    
    public var body: some View {
        Text("Home feature")
    }
}
