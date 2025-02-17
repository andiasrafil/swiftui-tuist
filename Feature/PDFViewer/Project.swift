
import ProjectDescription

let project = Project(
    name: "PDFViewer",
    targets: [
        .target(
            name: "PDFViewer",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.PDFViewer",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]),
        .target(
            name: "PDFViewerTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.PDFViewerTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "PDFViewer")
            ]),
    ]
)
