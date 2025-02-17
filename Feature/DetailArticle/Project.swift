
import ProjectDescription

let project = Project(
    name: "DetailArticle",
    targets: [
        .target(
            name: "DetailArticle",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.DetailArticle",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "ShareArticle", path: "../ShareArticle"),
                .project(target: "Tetopi", path: "../Tetopi"),
                .project(target: "Bookmark", path: "../Bookmark")
            ]),
        .target(
            name: "DetailArticleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.DetailArticleTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "DetailArticle")
            ]),
    ]
)
