//
//  CourseSelection.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 27.10.2022.
//

import SwiftUI

struct CourseSection: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var background : String
    var logo: String
    var progress: CGFloat
}

var courseSections = [
    CourseSection(title: "SwiftUI!", subtitle: "20 sections - 3 hours", text: "First IOS App with custom layots and animations, made in Kazakhstan, Almaty", image: "Illustration 5", background: "Background 5", logo: "Logo 2", progress: 0.5),
    CourseSection(title: "React Hooks Advanced", subtitle: "20 sections - 3 hours", text: "Learn how to build a website with Typescript, Hooks, Contentful and Gatsby Cloud", image: "Illustration 3", background: "Background 4", logo: "Logo 4", progress: 0.7),
    CourseSection(title: "UI Design", subtitle: "20 sections - 3 hours", text: "Design an iOS app for iOS 15 with custom layouts, animations and...", image: "Illustration 1", background: "Background 1", logo: "Logo 1", progress: 0.4),
    CourseSection(title: "Flutter for designers", subtitle: "20 sections - 3 hours", text: "Flutter is a relatively new toolkit that makes it easy to build cross-platform apps that look gorgeous and is easy to use.", image: "Illustration 2", background: "Background 2", logo: "Logo 3", progress: 0.6),
]

