
import ProjectDescription

let project = Project(
    name: "Homepage",
    targets: [
        .target(
            name: "Homepage",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Homepage",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "ArticleList", path: "../ArticleList"),
                .project(target: "Subscription", path: "../Subscription")
            ]),
        .target(
            name: "HomepageTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.HomepageTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Homepage")
            ]),
    ]
)
