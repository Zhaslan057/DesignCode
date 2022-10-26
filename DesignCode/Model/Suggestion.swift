//
//  Suggestion.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 21.10.2022.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    var text : String
}
var suggestions = [
Suggestion(text: "SwiftUI"), Suggestion(text: "React"), Suggestion(text: "Design")
]
