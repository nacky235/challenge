//
//  ViewController.swift
//  May_4th
//
//  Created by 稲葉夏輝 on 2020/05/04.
//  Copyright © 2020 稲葉夏輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number = 0
    let quotes = ["想像力が全てだ。想像力は人生を魅力あるものにする。","空想は知識より重要である。","狂気の沙汰。それは同じことをずっとやりながら，違う結果を望むものである。","宇宙と人間の愚かさ，この二つは永遠だ。宇宙については定かではないが。","困難の中に機会がある。","一度も失敗をした事がない人は，何も新しいことに挑戦した事がない人である。","大切なのは，疑問を持ち続ける事だ。好奇心はそれ自体に存在の意義がある。","恋に落ちるのを重力のせいにはできない。","他人のために尽くす人生こそ，価値ある人生だ。"]
    

    @IBOutlet var quote: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        quote.text = quotes[number]
        number += 1
    }
    
    func showQuote () {
        
        quote.text = quotes[number - 1]
        print(number)
        
        if number == quotes.count {
            number = 0
        }
        
        
    }

    @IBAction func lgtm(_ sender: Any) {
        number += 1
        showQuote()
        
    }
    
    @IBAction func lbtm(_ sender: Any) {
        number += 1
        showQuote()
    }
}

