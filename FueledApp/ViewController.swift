//
//  ViewController.swift
//  FueledApp
//
//  Created by Ben Stoller on 2/21/19.
//  Copyright © 2019 Ben Stoller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let logoButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 135, green: 183, blue: 130)
        
        createButtons()
        
        //create logo button
        view.addSubview(logoButton)
        logoButton.translatesAutoresizingMaskIntoConstraints = false
        logoButton.addTarget(self, action: #selector(logoTap), for: .touchUpInside)
        logoButton.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        logoButton.heightAnchor.constraint(equalTo: logoButton.widthAnchor, multiplier: 1.0).isActive = true
        logoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        logoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.width/2).isActive = true
        //logoButton.showsTouchWhenHighlighted = false
    }
    
    @objc func logoTap() {
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            self.logoButton.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        })
    }
    
    func createButtons() {

        let menuButton = UIButton()
        //create menu button
        view.addSubview(menuButton)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.addTarget(self, action: #selector(menuTap), for: .touchUpInside)
        menuButton.setTitle("Menu", for: .normal)
        menuButton.heightAnchor.constraint(equalTo: menuButton.widthAnchor, multiplier: 1.0).isActive = true
        menuButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        menuButton.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)

        menuButton.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/4).isActive = true
        menuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/2 - self.view.frame.width*0.1).isActive = true

        
        let quoteOTD = UIButton()
        //create quote button
        view.addSubview(quoteOTD)
        quoteOTD.translatesAutoresizingMaskIntoConstraints = false
        quoteOTD.addTarget(self, action: #selector(quoteTap), for: .touchUpInside)
        quoteOTD.setTitle("Quote", for: .normal)
        quoteOTD.heightAnchor.constraint(equalTo: quoteOTD.widthAnchor, multiplier: 1.0).isActive = true
        quoteOTD.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        quoteOTD.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)

        quoteOTD.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 + self.view.frame.height/8).isActive = true
        quoteOTD.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/2 - self.view.frame.width*0.1).isActive = true
        
        let instagram = UIButton()
        //create quote button
        view.addSubview(instagram)
        instagram.translatesAutoresizingMaskIntoConstraints = false
        instagram.addTarget(self, action: #selector(instaTap), for: .touchUpInside)
        instagram.setTitle("Instagram", for: .normal)
        instagram.heightAnchor.constraint(equalTo: instagram.widthAnchor, multiplier: 1.0).isActive = true
        instagram.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        instagram.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        
        instagram.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 + self.view.frame.height/32).isActive = true
        instagram.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/8).isActive = true
        
        let other1 = UIButton()
        //create quote button
        view.addSubview(other1)
        other1.translatesAutoresizingMaskIntoConstraints = false
        other1.addTarget(self, action: #selector(other1Func), for: .touchUpInside)
        other1.setTitle("other1", for: .normal)
        other1.heightAnchor.constraint(equalTo: other1.widthAnchor, multiplier: 1.0).isActive = true
        other1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        other1.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        
        other1.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/7).isActive = true
        other1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/8).isActive = true
        
        let other2 = UIButton()
        //create quote button
        view.addSubview(other2)
        other2.translatesAutoresizingMaskIntoConstraints = false
        other2.addTarget(self, action: #selector(other2Func), for: .touchUpInside)
        other2.setTitle("other2", for: .normal)
        other2.heightAnchor.constraint(equalTo: other2.widthAnchor, multiplier: 1.0).isActive = true
        other2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        other2.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        
        other2.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/7).isActive = true
        other2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width*5.5/8).isActive = true
        
        let other3 = UIButton()
        //create quote button
        view.addSubview(other3)
        other3.translatesAutoresizingMaskIntoConstraints = false
        other3.addTarget(self, action: #selector(other3Func), for: .touchUpInside)
        other3.setTitle("other3", for: .normal)
        other3.heightAnchor.constraint(equalTo: other3.widthAnchor, multiplier: 1.0).isActive = true
        other3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        other3.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        
        other3.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 + self.view.frame.height/32).isActive = true
        other3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width*5.5/8).isActive = true
    }
    
    @objc func menuTap() {
        
    }
    @objc func quoteTap() {
        
    }
    @objc func instaTap() {
        
    }
    @objc func other1Func() {
        
    }
    @objc func other2Func() {
        
    }
    @objc func other3Func() {
        
    }

}


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
