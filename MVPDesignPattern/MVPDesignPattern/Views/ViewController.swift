//
//  ViewController.swift
//  MVPDesignPattern
//
//  Created by sarwesh reddy on 10/11/19.
//  Copyright © 2019 sarwesh reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,TrafficLightViewDelegate {
   
    

    @IBOutlet var desrciptionLabel: UILabel!
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }

    @IBAction func redClicked(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Red")

    }
    
    @IBAction func yellowClicked(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Yellow")

    }
    @IBAction func greenClicked(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Green")

    }
    func displayTrafficLight(description: (String)) {
        desrciptionLabel.text = description
       }
}

