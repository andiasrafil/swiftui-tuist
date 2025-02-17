
import SwiftUI

public struct AccountView: View {
    public init() { }
    @StateObject var store: AccountVM = .init()
    
    public var body: some View {
        Text("Account feature")
    }
}
