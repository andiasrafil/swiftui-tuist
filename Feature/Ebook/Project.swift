
import ProjectDescription

let project = Project(
    name: "Ebook",
    targets: [
        .target(
            name: "Ebook",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Ebook",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Subscription", path: "../Subscription"),
                .project(target: "PDFViewer", path: "../PDFViewer")
            ]),
        .target(
            name: "EbookTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.EbookTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Ebook")
            ]),
    ]
)
