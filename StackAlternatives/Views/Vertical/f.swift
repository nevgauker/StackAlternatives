//
//  f.swift
//  blabla
//
//  Created by Rotem Nevgauker on 27/01/2020.
//  Copyright © 2020 Rotem Nevgauker. All rights reserved.
//

import UIKit

class f: UIView {

    class func instanceFromNib() -> f {
          return UINib(nibName: "f", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! f
      }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
