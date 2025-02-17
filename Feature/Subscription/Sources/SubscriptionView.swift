
import SwiftUI

public struct SubscriptionView: View {
    public init() { }
    @StateObject var store: SubscriptionVM = .init()
    
    public var body: some View {
        Text("Subscription feature")
    }
}
