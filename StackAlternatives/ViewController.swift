//
//  ViewController.swift
//  StackAlternatives
//
//  Created by Rotem Nevgauker on 27/01/2020.
//  Copyright © 2020 Rotem Nevgauker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var horizView: HorizontalStackView!
    @IBOutlet weak var verticView: VerticalStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view_a = a.instanceFromNib()
        let view_b = b.instanceFromNib()
        let view_c = c.instanceFromNib()
        horizView.viewsSetup(views: [view_a, view_b, view_c], spaces: nil)
        
        let view_d = d.instanceFromNib()
        let view_e = e.instanceFromNib()
        let view_f = f.instanceFromNib()
        verticView.viewsSetup(views: [view_d,view_e,view_f], spaces: [30,60])
    }
    
    
}

