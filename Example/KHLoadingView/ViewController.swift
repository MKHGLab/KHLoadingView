//
//  ViewController.swift
//  KHLoadingView
//
//  Created by mkhglab@gmail.com on 05/14/2017.
//  Copyright (c) 2017 mkhglab@gmail.com. All rights reserved.
//

import UIKit
import KHLoadingView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let loading = KHLoading()
        loading.showLoadingView(parentView:self.view)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

