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
    var selectedIndex: Int = -1
    var quoteType = Int(arc4random_uniform(UInt32(Datahelper.quotes.count)))
    
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
        
        selectedIndex = genarateRandomIndex(upperbound: Datahelper.quotes[quoteType].count)
        
        let data = Datahelper.getQuote(type: quoteType, index: selectedIndex)
        lblQuote.text = data.Quote
        lblAuthors.text=data.Author
            
        imgBackGround.image=UIImage(named: "bg0\(selectedIndex).png")
        print(selectedIndex)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


}
