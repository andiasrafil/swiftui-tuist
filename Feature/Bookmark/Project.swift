
import ProjectDescription

let project = Project(
    name: "Bookmark",
    targets: [
        .target(
            name: "Bookmark",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Bookmark",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]),
        .target(
            name: "BookmarkTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.BookmarkTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Bookmark")
            ]),
    ]
)
