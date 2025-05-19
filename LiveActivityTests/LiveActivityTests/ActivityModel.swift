//
//  ActivityModel.swift
//  LiveActivityTests
//
//  Created by Marcos Contente on 19/05/25.
//

import ActivityKit

struct ActivityModel: ActivityAttributes {
    struct ContentState: Codable, Hashable {
    }

    var text: String
    var image: String
    var timeLeft: Double
}
