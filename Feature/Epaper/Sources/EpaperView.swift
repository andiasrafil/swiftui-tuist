
import SwiftUI

public struct EpaperView: View {
    public init() { }
    @StateObject var store: EpaperVM = .init()
    
    public var body: some View {
        Text("Epaper feature")
    }
}
