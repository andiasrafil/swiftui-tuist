
import ProjectDescription

let project = Project(
    name: "ArticleList",
    targets: [
        .target(
            name: "ArticleList",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.ArticleList",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "ShareArticle", path: "../ShareArticle"),
                .project(target: "Tetopi", path: "../Tetopi"),
                .project(target: "Bookmark", path: "../Bookmark")
            ]),
        .target(
            name: "ArticleListTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.ArticleListTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "ArticleList")
            ]),
    ]
)
