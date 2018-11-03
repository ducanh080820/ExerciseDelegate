//
//  ViewController.swift
//  ExerciseDelegate
//
//  Created by Trần Đức Anh on 11/1/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
  
    @IBOutlet weak var textFieldVC1: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vC2 = segue.destination as? ViewController2 {
            vC2.dataTextField = textFieldVC1.text
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        if let unwind = unwindSegue.source as? ViewController3 {
            textFieldVC1.text = unwind.dataTextField
        }
        
    }
    
}

