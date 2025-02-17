
import ProjectDescription

let project = Project(
    name: "Epaper",
    targets: [
        .target(
            name: "Epaper",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Epaper",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Subscription", path: "../Subscription"),
                .project(target: "PDFViewer", path: "../PDFViewer")
            ]),
        .target(
            name: "EpaperTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.EpaperTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Epaper")
            ]),
    ]
)
