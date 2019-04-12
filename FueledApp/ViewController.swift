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
    var bigButton = true
    
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
        if (bigButton) {
            UIView.animate(withDuration: 0.5, animations: {() -> Void in
                self.logoButton.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
            })
            bigButton = false;
        } else {
            UIView.animate(withDuration: 0.5, animations: {() -> Void in
                self.logoButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
            bigButton = true;
        }
    }
    
    func createButtons() {

        let menuButton = UIButton()
        //create menu button
        view.addSubview(menuButton)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.addTarget(self, action: #selector(menuTap), for: .touchUpInside)
        menuButton.setTitle("PPL O FUELED", for: .normal)
        menuButton.heightAnchor.constraint(equalTo: menuButton.widthAnchor, multiplier: 0.66).isActive = true
        menuButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        menuButton.setBackgroundImage(UIImage(named: "hotpepper"), for: .normal)

        menuButton.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/5).isActive = true
        menuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/2 - self.view.frame.width*0.1).isActive = true

        /*
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
        */
        
        let instagram = UIButton()
        //create quote button
        view.addSubview(instagram)
        instagram.translatesAutoresizingMaskIntoConstraints = false
        instagram.addTarget(self, action: #selector(instaTap), for: .touchUpInside)
        //instagram.setTitle("Instagram", for: .normal)
        instagram.heightAnchor.constraint(equalTo: instagram.widthAnchor, multiplier: 1.3).isActive = true
        instagram.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        instagram.setBackgroundImage(UIImage(named: "eggplant"), for: .normal)
        
        instagram.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 + self.view.frame.height/16).isActive = true
        instagram.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/5).isActive = true
        
        let instaLabel = UILabel()
        view.addSubview(instaLabel)
        instaLabel.translatesAutoresizingMaskIntoConstraints = false
        instaLabel.text = "Instagram"
        instaLabel.topAnchor.constraint(equalTo: instagram.bottomAnchor, constant: 0).isActive = true
        instaLabel.heightAnchor.constraint(equalTo: instagram.heightAnchor, multiplier: 0.4).isActive = true
        instaLabel.centerXAnchor.constraint(equalTo: instagram.centerXAnchor, constant:0).isActive = true
        
        let other1 = UIButton()
        //create quote button
        view.addSubview(other1)
        other1.translatesAutoresizingMaskIntoConstraints = false
        other1.addTarget(self, action: #selector(other1Func), for: .touchUpInside)
        other1.setTitle("quote", for: .normal)
        other1.heightAnchor.constraint(equalTo: other1.widthAnchor, multiplier: 1.0).isActive = true
        other1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        other1.setBackgroundImage(UIImage(named: "corn"), for: .normal)
        
        other1.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/9).isActive = true
        other1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/8).isActive = true
        
        let order = UIButton()
        //create quote button
        view.addSubview(order)
        order.translatesAutoresizingMaskIntoConstraints = false
        order.addTarget(self, action: #selector(openTapingo), for: .touchUpInside)
        //order.setTitle("Order\nOnline", for: .normal)
        order.setBackgroundImage(UIImage(named: "onion"), for: .normal)
        //order.titleLabel?.lineBreakMode = .byWordWrapping//make button title multiple lines
        order.titleLabel?.textAlignment = .center
        order.heightAnchor.constraint(equalTo: order.widthAnchor, multiplier: 1.0).isActive = true
        order.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        //order.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        
        let orderLabel = UILabel()
        view.addSubview(orderLabel)
        orderLabel.translatesAutoresizingMaskIntoConstraints = false
        orderLabel.text = "Order Online"
        orderLabel.topAnchor.constraint(equalTo: order.bottomAnchor, constant: 0).isActive = true
        orderLabel.heightAnchor.constraint(equalTo: order.heightAnchor, multiplier: 0.4).isActive = true
        orderLabel.centerXAnchor.constraint(equalTo: order.centerXAnchor, constant:0).isActive = true
        
        order.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/9).isActive = true
        order.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width*5.5/8).isActive = true
        
        let history = UIButton()
        //create quote button
        view.addSubview(history)
        history.translatesAutoresizingMaskIntoConstraints = false
        history.addTarget(self, action: #selector(historyFunc), for: .touchUpInside)
        //other3.setTitle("other3", for: .normal)
        history.heightAnchor.constraint(equalTo: history.widthAnchor, multiplier: 1.0).isActive = true
        history.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        history.setBackgroundImage(UIImage(named: "greenpepper"), for: .normal)
        
        history.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 + self.view.frame.height/16).isActive = true
        history.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width*5/8).isActive = true
        let historyLabel = UILabel()
        view.addSubview(historyLabel)
        historyLabel.translatesAutoresizingMaskIntoConstraints = false
        historyLabel.text = "History"
        historyLabel.topAnchor.constraint(equalTo: history.bottomAnchor, constant: 0).isActive = true
        historyLabel.heightAnchor.constraint(equalTo: history.heightAnchor, multiplier: 0.4).isActive = true
        historyLabel.centerXAnchor.constraint(equalTo: history.centerXAnchor, constant:0).isActive = true
    }
    
    @objc func menuTap() {
        
    }
    @objc func quoteTap() {
        
    }
    @objc func instaTap() {
        guard let url = URL(string: "https://instagram.com/jmufueled") else {return}
        if (UIApplication.shared.canOpenURL(url)) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    @objc func other1Func() {
        
    }
    @objc func openTapingo() {
        let url = URL(string: "https://www.tapingo.com/order/restaurant/ming-dynasty-restaurant-lounge-posind-uva/")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    @objc func historyFunc() {
        present(History(), animated: true, completion: nil)
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
