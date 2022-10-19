//
//  ViewController.swift
//  ActivityAPI
//
//  Created by MANOJ REDDY on 2022-10-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func catfacts(_ sender: UIButton) {
        
        let url = "https://meowfacts.herokuapp.com/?count=3"
        
        APIDataFetch().fetchData(url: url)
    }
    
    @IBAction func anime(_ sender: UIButton) {
        
        let url = "https://anime-facts-rest-api.herokuapp.com/api/v1"
        
        APIDataFetch().fetchData(url: url)
    }
    
    @IBAction func emoji(_ sender: UIButton) {
        
        let url = "https://emojihub.herokuapp.com/api/random"
        
        APIDataFetch().fetchData(url: url)
    }
    
    
}

