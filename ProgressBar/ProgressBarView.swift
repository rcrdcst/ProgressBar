//
//  ProgressBarView.swift
//  ProgressBar
//
//  Created by ricardo silva on 20/02/2017.
//  Copyright © 2017 ricardo silva. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {

    private var _innerProgress: CGFloat = 0.0

    var innerProgress: CGFloat {
        get {
            return _innerProgress * bounds.width
        }

        set {
            if newValue > 1.0 {
                _innerProgress = 1.0
            } else if newValue < 0.0 {
                _innerProgress = 0.0
            } else {
                _innerProgress = newValue
            }
            setNeedsDisplay()
        }
    }

    override func draw(_ rect: CGRect) {
        ProgressBarDraw.drawProgressBar(frame: bounds, progress: innerProgress)
    }

}
