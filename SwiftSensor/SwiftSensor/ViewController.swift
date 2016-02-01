//
//  ViewController.swift
//  SwiftSensor
//
//  Created by Enkhjargal Gansukh on 2/1/16.
//  Copyright © 2016 Enkhjargal Gansukh. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    var motionManager:CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startSensor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func startSensor(){
        motionManager = CMMotionManager()
        motionManager.accelerometerUpdateInterval = 0.2
        motionManager.gyroUpdateInterval = 0.2
        
        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue()!, withHandler: {
                (data, error) in
                print(data)
            })
        
        motionManager.startGyroUpdatesToQueue(NSOperationQueue.currentQueue()!) { (gyro_data, error) -> Void in
            print(gyro_data)
        }
    }

}

