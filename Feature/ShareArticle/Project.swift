
import ProjectDescription

let project = Project(
    name: "ShareArticle",
    targets: [
        .target(
            name: "ShareArticle",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.ShareArticle",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]),
        .target(
            name: "ShareArticleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.ShareArticleTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "ShareArticle")
            ]),
    ]
)
