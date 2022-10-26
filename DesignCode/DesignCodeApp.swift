//
//  DesignCodeApp.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 11.10.2022.
//

import SwiftUI

@main
struct DesignCodeApp: App {
    @StateObject var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
