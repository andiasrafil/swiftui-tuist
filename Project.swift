import ProjectDescription

let project = Project(
    name: "swiftui-tuist",
    targets: [
        .target(
            name: "swiftui-tuist",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.swiftui-tuist",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["swiftui-tuist/Sources/**"],
            resources: ["swiftui-tuist/Resources/**"],
            dependencies: [
                .project(target: "DetailArticle", path: .relativeToCurrentFile("Feature/DetailArticle")),
                .project(target: "ArticleList", path: .relativeToCurrentFile("Feature/ArticleList")),
                .project(target: "KidKit", path: .relativeToCurrentFile("Feature/KidKit"))
            ]
        ),
        .target(
            name: "swiftui-tuistTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.swiftui-tuistTests",
            infoPlist: .default,
            sources: ["swiftui-tuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "swiftui-tuist")]
        ),
    ]
)
