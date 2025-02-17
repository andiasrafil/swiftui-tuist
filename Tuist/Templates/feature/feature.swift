//
//  feature.swift
//  Manifests
//
//  Created by Andi Asrafil on 16/02/25.
//

import ProjectDescription
let featureName: Template.Attribute = .required("name")
let featurePath = "Feature/"
let template = Template(description: "Feature Template", attributes: [
    featureName
], items: [
    .file(path: featurePath + "\(featureName)/Sources/\(featureName)View.swift", templatePath: "FeatureView.stencil"),
    .file(path: featurePath + "\(featureName)/Sources/\(featureName).swift", templatePath: "FeatureVM.stencil"),
    .file(path: featurePath + "\(featureName)/Project.swift", templatePath: "Project.stencil"),
    .file(path: featurePath + "\(featureName)/Tests/\(featureName)Tests.swift", templatePath: "FeatureTest.stencil"),
    .file(path: featurePath + "\(featureName)/Resources/Assets.xcassets/AppIcon.appiconset/Contents.json", templatePath: "Contents.json.stencil")
])
