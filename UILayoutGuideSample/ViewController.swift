//
//  ViewController.swift
//  UILayoutGuideSample
//
//  Created by TomoyaOnishi on 2018/08/17.
//  Copyright © 2018年 TomoyaOnishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        let space1 = UILayoutGuide()
        view.addLayoutGuide(space1)
        
        let space2 = UILayoutGuide()
        view.addLayoutGuide(space2)
        
        space1.widthAnchor.constraint(equalTo: space2.widthAnchor).isActive = true
        space2.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        label1.centerYAnchor.constraint(equalTo: label2.centerYAnchor).isActive = true
        label1.rightAnchor.constraint(equalTo: space1.leftAnchor).isActive = true
        space1.rightAnchor.constraint(equalTo: label2.leftAnchor).isActive = true
        label2.rightAnchor.constraint(equalTo: space2.leftAnchor).isActive = true
        space2.rightAnchor.constraint(equalTo: label3.leftAnchor).isActive = true
        label3.centerYAnchor.constraint(equalTo: label2.centerYAnchor).isActive = true
        
        
        // ----

        textView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false

        let container = UILayoutGuide()
        view.addLayoutGuide(container)
        
        container.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textView.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        textView.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
        textView.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
        button.topAnchor.constraintEqualToSystemSpacingBelow(textView.bottomAnchor, multiplier: 1).isActive = true
        button.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
        
        container.leftAnchor.constraintEqualToSystemSpacingAfter(view.leftAnchor, multiplier: 1).isActive = true
        container.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
    }

}

