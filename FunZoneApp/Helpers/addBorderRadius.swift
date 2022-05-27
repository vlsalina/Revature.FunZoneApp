//
//  addBorderRadius.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/26/22.
//

import Foundation
import UIKit

func addBorderRadius(view: inout UIView) {
    view.layer.cornerRadius = 10
    view.layer.masksToBounds = true
}
