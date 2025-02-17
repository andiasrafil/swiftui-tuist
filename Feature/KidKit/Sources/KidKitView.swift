
import SwiftUI

public struct KidKitView: View {
    public init() { }
    @StateObject var store: KidKitVM = .init()
    
    public var body: some View {
        Text("KidKit feature")
    }
}
