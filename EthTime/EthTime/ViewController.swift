//
//  ViewController.swift
//  EthTime
//
//  Created by sam on 11/11/16.
//  Copyright © 2016 sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label: UILabel!
    

    let formatter = DateFormatter()
    let formatter2 = DateFormatter()
    
    
    func sam() {
    Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)
    
    
    formatter.dateStyle = .none
    formatter.timeStyle = .medium
    formatter.timeZone = TimeZone(abbreviation: "EAT")
    
    
    formatter2.timeStyle = .medium
    formatter2.timeZone = TimeZone(abbreviation: "EAT")
    formatter2.amSymbol = ""
    formatter2.pmSymbol = ""
    
    let calendar = Calendar(identifier: .ethiopicAmeteMihret)
    
    
    let dateComponents = calendar.dateComponents([.hour, .minute, .day, .month, .year], from: Date())
    let monthName = calendar.monthSymbols[dateComponents.month! - 1]
    
    Label3.text = "\(monthName) \(dateComponents.day!) \(dateComponents.year!)"
    

    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
          sam()
        
        // Do any additional setup after loading the view, typically from a nib.
        // Label.text = DateFormatter.localizedString(from: Date(), dateStyle: DateFormatter.Style.none, timeStyle: DateFormatter.Style.short)
        
       
        
        }
    
    func update() -> Void {
        Label.text = formatter.string(from: Date())
      
        Label2.text = formatter2.string(from: Date(timeIntervalSinceNow: -360 * 60))
        
    }
        
     
       

        
        
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

