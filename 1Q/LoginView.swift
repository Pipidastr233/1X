//
//  LoginView.swift
//  smartHouseTV
//
//  Created by user on 16.06.2022.
//

import Foundation
import UIKit

class LoginView {
    
    lazy var frontViewForImageView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(named: "background")?.withAlphaComponent(0.52)
        return view
    }()
    
    func setupBackgroundForImageView(view: UIView) {
        view.addSubview(frontViewForImageView)
    }
    
    func addSubviews(view: UIView) {
        view.addSubview(frontViewForImageView)
    }
    
}


