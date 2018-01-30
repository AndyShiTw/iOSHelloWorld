//
//  ViewController.swift
//  HelloWorld
//
//  Created by HSU JUI-FU on 2018/1/30.
//  Copyright © 2018年 AndyShi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage(sender : UIButton){
        // 按了哪個按鈕
        let selectedButton = sender;
        
        if let wordToLookUp = selectedButton.titleLabel?.text {
            var emojiDict = ["😈" : "Devil" , "🤮" : "Vomit" , "👽" : "ET" , "🙀" : "CatScale" , "👅" : "tongue"];
            var mean = emojiDict[wordToLookUp];
            
            let alertController = UIAlertController(title:wordToLookUp,message:mean,preferredStyle:UIAlertControllerStyle.alert);
            
            alertController.addAction(UIAlertAction(title:"OK",style:UIAlertActionStyle.default,handler:nil))
            
            present(alertController,animated:true,completion:nil);
        }
    }
}

