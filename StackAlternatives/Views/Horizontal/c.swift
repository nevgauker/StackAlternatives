//
//  c.swift
//  blabla
//
//  Created by Rotem Nevgauker on 27/01/2020.
//  Copyright © 2020 Rotem Nevgauker. All rights reserved.
//

import UIKit

class c: UIView {

    
    class func instanceFromNib() -> c {
           return UINib(nibName: "c", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! c
       }
       
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
