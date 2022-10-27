//
//  Model.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 20.10.2022.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    @Published var showDetail : Bool = false
    @Published var selectedModal : Modal = .signIn
}
enum Modal : String {
    case signUp
    case signIn
}
