//
//  ViewController.swift
//  Project1
//
//  Created by Hương Thoa on 11/11/18.
//  Copyright © 2018 Hương Thoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: UI Elments
    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var lblAuthors: UILabel!
    @IBOutlet weak var imgBackGround: UIImageView!
    
    // MARK: Data model
    var quotes = [String]()
    var authors = [String]()
    var selectedIndex: Int = -1
    var quoteType = -1
    
    // MARK: Events
    func genarateRandomIndex(upperbound: Int) -> Int {
        var newIndex = -1
        
        repeat{
            newIndex = Int(arc4random_uniform(UInt32(upperbound)))
        }
            while(newIndex == selectedIndex)
        
        return newIndex
    }
    
    // MARK: Xử lí dành cho ViewControler riêng
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quotes.append("Life is 10% what happens to you and 90% how you react to it")
        quotes.append("Find three hobbies you love: one to make you money, one to keep you in shape, and one to be creative")
        quotes.append("In order to succeed, we must first believe than we can")
        quotes.append("There is nothing impossible to him who will try")
        quotes.append("Over-thinking ruins you. Ruins the situation, twists things around, makes you worry and just makes everything much worse than it actually is")
        quotes.append("Practice like you've never won. Perform like you've never lost")
        
        authors=["Charles R.Swindoll","","Nikos Karantrakis","Alexander The Great","No Name","No Name","No Name"]
        
        selectedIndex = genarateRandomIndex(upperbound: quotes.count)
        
        lblQuote.text = quotes[selectedIndex]
        lblAuthors.text=authors[selectedIndex]
        imgBackGround.image=UIImage(named: "bg0\(selectedIndex).png")
        print(selectedIndex)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


}
