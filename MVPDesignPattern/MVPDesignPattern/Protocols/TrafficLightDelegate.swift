//
//  TrafficLightDelegate.swift
//  MVPDesignPattern
//
//  Created by sarwesh reddy on 10/11/19.
//  Copyright © 2019 sarwesh reddy. All rights reserved.
//

import Foundation
protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description:(String))
}
