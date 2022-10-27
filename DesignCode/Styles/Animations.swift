//
//  Animations.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 19.10.2022.
//

import SwiftUI

extension Animation {
    static let openCard = Animation.spring(response: 0.8, dampingFraction: 0.8)
    static let closeCard = Animation.spring(response: 0.5, dampingFraction: 0.7)
}
