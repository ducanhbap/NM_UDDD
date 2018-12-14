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
    var quotes = [[String]]()
    var authors = [[String]]()
    var selectedIndex: Int = -1
    var quoteType = Int(arc4random_uniform(UInt32(3)))
    
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
        
        quotes += [["An ounce of action is worth a ton of theory",
                    "A promise is a cloud; fulfillment is rain",
                   "Action will remove tge doubts that theory cannot solve",
                   "He who ha begun is haft done",
                   "Never confuse motion with action"]]
        
        quotes += [["Your future is created by what you do today, not tomorrow",
                    "Attitude is a little thing tha makes a big difference",
                    "Happiness always looks small while you hold it in your hands, but let it go, and you learn at one how big and precious it is",
                    "Happiness doesn't depend on any external conditions, it is governed bu our mental attitude",
                    "Happiness is not something you postpone for the future; It is something you design dor the present!"]]
        
        quotes += [["Tis a great confidence in a friend to tell him your faults; greater to tell him his",
                    "A friend can tell you things you don't want to tell yourself",
                    "A friend is a gift you give yourself",
                    "A friend is someone who knows all about you, and loves you just the same",
                    "A friend is someone with whom you dare to be yourseld"]]

        
        authors += [["Arabian Provervb","Tehyi Hsieh","Friedrich Engels","Horace","Benjamin Franklin"]]
        authors += [["Benjamin Franklin","Freances Ward Weller","Robert Louis Stevenson","Proverb","Frank Crame"]]
        authors += [["Robert Kiyosaki","Winston Churchill","Maxim Gorky","Dale Carnegie","Jim Rohn"]]
        
        selectedIndex = genarateRandomIndex(upperbound: quotes.count)
        
        lblQuote.text = quotes[quoteType][selectedIndex]
        lblAuthors.text=authors[quoteType][selectedIndex]
        imgBackGround.image=UIImage(named: "bg0\(selectedIndex).png")
        print(selectedIndex)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


}
