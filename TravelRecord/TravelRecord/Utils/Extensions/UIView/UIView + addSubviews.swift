//
//  UIView + addSubviews.swift
//  TravelRecord
//
//  Created by 겸 on 2022/12/22.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews : UIView...) {
        subviews.forEach(addSubview(_:))
    }
}
