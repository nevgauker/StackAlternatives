//
//  VerticalStackView.swift
//  blabla
//
//  Created by Rotem Nevgauker on 27/01/2020.
//  Copyright © 2020 Rotem Nevgauker. All rights reserved.
//

import UIKit



/* UIStackView alternative : This can be  use both by code and the story board.
 if you use the story board don't forget to call viewsSetup.
 if you do not define spaces it will user the constantSpace for all the views.
 if you do define spaces define the right amout , which is the number of the views - 1
 */

class VerticalStackView: UIScrollView {
    
    let padding:CGFloat = 20.0
    let topSpace:CGFloat = 50.0
    let constSpace:CGFloat = 10.0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(frame:CGRect,views:[UIView],spaces:[CGFloat]?){
        super.init(frame: frame)
        viewsSetup(views: views,spaces: spaces)
    }
    func awakeFromNib(views:[UIView], spaces:[CGFloat]?) {
        super.awakeFromNib()
        viewsSetup(views: views, spaces: spaces)
    }
    
    func viewsSetup(views:[UIView],spaces:[CGFloat]?){
        
        self.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        var rect:CGRect!
        for i in 0..<views.count{
            rect = views[i].frame
            rect.size.width = self.frame.size.width - (2.0*padding)
            rect.origin.x = 0 + padding
            if i == 0{
                rect.origin.y = 0 + topSpace
            }else  {
                let prev = views[i-1]
                rect.origin.y = prev.frame.origin.y + prev.frame.size.height + constSpace
                
                if let diffs = spaces {
                    if diffs.count != views.count - 1 {
                        fatalError("the amount of spaces should be the amount of views minus one")
                    }
                    rect.origin.y = prev.frame.origin.y + prev.frame.size.height + diffs[i-1]
                }
            }
            let v = views[i]
            v.frame = rect
            self.addSubview(v)
        }
        
        self.contentSize = CGSize(width: self.frame.width, height: calcHeight(views: views, spaces: spaces))
    }
    
    
    private func calcHeight(views:[UIView],spaces:[CGFloat]?)->CGFloat {
        var height:CGFloat = 0.0
        for view in views {
            height += view.frame.size.height
        }
        
        let count = CGFloat(views.count - 1)
        var totalSpaces = constSpace * count
        
        if let diffs = spaces {
            if diffs.count != views.count - 1 {
                fatalError("the amount of spaces should be the amount of views minus one")
            }
            totalSpaces = 0
            for space in diffs {
                totalSpaces += space
            }
        }
        height += totalSpaces
        return height
    }
}


