//
//  DataHelper.swift
//  Project1
//
//  Created by Hương Thoa on 12/14/18.
//  Copyright © 2018 Hương Thoa. All rights reserved.
//

import Foundation

class Datahelper{
    static let quotes = [
                        ["An ounce of action is worth a ton of theory",
                            "A promise is a cloud; fulfillment is rain",
                            "Action will remove tge doubts that theory cannot solve",
                            "He who ha begun is haft done",
                            "Never confuse motion with action"],
                        ["Your future is created by what you do today, not tomorrow",
                            "Attitude is a little thing tha makes a big difference",
                            "Happiness always looks small while you hold it in your hands, but let it go, and you learn at one how big and precious it is",
                            "Happiness doesn't depend on any external conditions, it is governed bu our mental attitude",
                            "Happiness is not something you postpone for the future. It is something you design dor the present!"],
                        ["Tis a great confidence in a friend to tell him your faults; greater to tell him his",
                            "A friend can tell you things you don't want to tell yourself",
                            "A friend is a gift you give yourself",
                            "A friend is someone who knows all about you, and loves you just the same",
                            "A friend is someone with whom you dare to be yourseld"]]
    
    
    static let authors = [
        ["Arabian Provervb",
         "Tehyi Hsieh",
         "Friedrich Engels",
         "Horace",
         "Benjamin Franklin"],
        ["Benjamin Franklin",
         "Freances Ward Weller",
         "Robert Louis Stevenson",
         "Proverb",
         "Frank Crame"],
        ["Robert Kiyosaki",
         "Winston Churchill",
         "Maxim Gorky",
         "Dale Carnegie",
         "Jim Rohn"]]
    
    static func getQuote(type: Int, index: Int) -> (Quote: String,Author: String) {
        let quote = quotes[type][index]
        let author = authors[type][index]
        
        return (quote,author)
    }
        
}
