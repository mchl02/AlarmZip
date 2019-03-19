//
//  ViewController.swift
//  AlarmZip
//
//  Created by Matthew Lee on 3/18/19.
//  Copyright © 2019 Matthew Lee. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBAction func action(_ sender: Any)
    {
        let content = UNMutableNotificationContent()
        content.title = "How many days are there in one year"
        content.subtitle = "Do you know?"
        content.body = "Do you really know?"
        content.sound = UNNotificationSound.init(named: UNNotificationSoundName(rawValue: "customSound.aiff"))
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Asked for permission
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


