
import SwiftUI

public struct PDFViewerView: View {
    public init() { }
    @StateObject var store: PDFViewerVM = .init()
    
    public var body: some View {
        Text("PDFViewer feature")
    }
}
