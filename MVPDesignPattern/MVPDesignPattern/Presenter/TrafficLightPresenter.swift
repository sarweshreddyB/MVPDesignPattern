//
//  TrafficLightPresenter.swift
//  MVPDesignPattern
//
//  Created by sarwesh reddy on 10/11/19.
//  Copyright © 2019 sarwesh reddy. All rights reserved.
//

import Foundation
class TrafficLightPresenter {
    private let trafficLightService:TrafficLightService
    weak private var trafficLightViewDelegate : TrafficLightViewDelegate?
    
    init(trafficLightService:TrafficLightService){
        self.trafficLightService = trafficLightService
    }
    
    func setViewDelegate(trafficLightViewDelegate:TrafficLightViewDelegate?){
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
    func trafficLightColorSelected(colorName:(String)){

        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] traficLight in

            if let traficLight = traficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: traficLight.description)
            }
        }
    }
}
