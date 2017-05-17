//
//  ViewController.swift
//  ios-animating-button-demo
//
//  Created by Kushida　Eiji on 2017/05/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButton(_ sender: UIButton) {

        let pulse = Pushing(numberOfPulses: 1,
                            radius: 110,
                            position: sender.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.lightGray.cgColor
        self.view.layer.insertSublayer(pulse, below: sender.layer)
    }
}

