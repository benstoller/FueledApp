//
//  ViewController.swift
//  FueledApp
//
//  Created by Ben Stoller on 2/21/19.
//  Copyright © 2019 Ben Stoller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //This is the button that shrinks in the beginning
    let logoButton = UIButton(type: .custom)
    //This is a button that is the same size of the shrunken logobutton. Used as reference for other button positioning.
    let refButton = UIButton(type: .custom)
    //used to determine if the logobutton is shrunk or large
    var bigButton = true
    //var truck = UIImageView()
    //this is the picture of the tree trunk
    var treeTrunk = UIImageView()
    //this is the picture of the tree leaves
    var treeLeaves = UIImageView()
    //this is the color of the labels
    var textColor = UIColor()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor(red: 135, green: 183, blue: 130)//pastel green
        //view.backgroundColor = UIColor(red: 135, green: 206, blue: 235)//sky blue
        
        //set the text color
        textColor = .white
        
        //view.backgroundColor = .white
        
        //set the background image to the vineyard
        view.layer.contents = #imageLiteral(resourceName: "background2").cgImage
        
        //this is all the code for creating the reference button.
        //this adds the button to the page
        view.addSubview(refButton)
        //this is just necessary for all elements.
        refButton.translatesAutoresizingMaskIntoConstraints = false
        //this sets the function cull for when the button is tapped
        refButton.addTarget(self, action: #selector(logoTap), for: .touchUpInside)
        //sets the image of the button
        refButton.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        //sets the height equal of the width to make a circle
        refButton.heightAnchor.constraint(equalTo: refButton.widthAnchor, multiplier: 1).isActive = true
        //sets the width (and height because they're equal)
        refButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        //refButton.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.width/2).isActive = true
        //sets the location of the button
        refButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        //sets the location of the button
        refButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        //moves the buttons below everything else so it can't be seen
        refButton.layer.zPosition -= 1000

        
        //create logo button
        view.addSubview(logoButton)
        logoButton.translatesAutoresizingMaskIntoConstraints = false
        logoButton.addTarget(self, action: #selector(logoTap), for: .touchUpInside)
        logoButton.setBackgroundImage(UIImage(named: "fueledLogo"), for: .normal)
        logoButton.heightAnchor.constraint(equalTo: logoButton.widthAnchor, multiplier: 1.0).isActive = true
        logoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        logoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.width/2).isActive = true
        //logoButton.showsTouchWhenHighlighted = false
        logoButton.layer.zPosition += 5
        
        
        //create tree
        view.addSubview(treeTrunk)
        treeTrunk.translatesAutoresizingMaskIntoConstraints = false
        treeTrunk.image = UIImage(named: "trunk2")
        treeTrunk.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        treeTrunk.topAnchor.constraint(equalTo: logoButton.centerYAnchor, constant: 0).isActive = true
        treeTrunk.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        treeTrunk.contentMode = .scaleAspectFit
        treeTrunk.layer.zPosition -= 10
        
        view.addSubview(treeLeaves)
        treeLeaves.translatesAutoresizingMaskIntoConstraints = false
        treeLeaves.image = UIImage(named: "leaves1")
        treeLeaves.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        treeLeaves.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.4).isActive = true
        
        treeLeaves.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        treeLeaves.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        treeLeaves.layer.zPosition -= 7

        /*
        //for adding the picture of the truck
        view.addSubview(truck)
        truck.translatesAutoresizingMaskIntoConstraints = false
        truck.image = UIImage(named: "truck1")
        truck.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        truck.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        //truck.bottomAnchor.constraint(equalTo: treeLeaves.topAnchor, constant: 0).isActive = true
        //truck.contentMode = .scaleAspectFill
        //truck.contentMode = .scaleToFill
        truck.contentMode = .scaleAspectFit
        truck.layer.zPosition -= 10
 */
        //function call to create all the buttons
        createButtons()
        //makes the button shrink once everything is made
        logoTap()
    }
    
    //shrinks or grows the logobutton
    @objc func logoTap() {
        if (bigButton) {
            UIView.animate(withDuration: 3.0, animations: {() -> Void in
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
        
        //creates the people of button
        let pplOfButton = UIButton()
        //adds to the pages
        view.addSubview(pplOfButton)
        pplOfButton.translatesAutoresizingMaskIntoConstraints = false
        pplOfButton.addTarget(self, action: #selector(pplOfTap), for: .touchUpInside)
        pplOfButton.heightAnchor.constraint(equalTo: pplOfButton.widthAnchor, multiplier: 0.66).isActive = true
        pplOfButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        pplOfButton.setBackgroundImage(UIImage(named: "hotpepper"), for: .normal)
        //pplOfButton.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/6).isActive = true
        //pplOfButton.bottomAnchor.constraint(equalTo: refButton.topAnchor, constant: 0).isActive = true
        //pplOfButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/2 - self.view.frame.width*0.1).isActive = true
        //looks a little off with the commented code from above so i changed the constarint to the code below
        pplOfButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        //creates the label under the people of button
        let pplOfLabel = UILabel()
        view.addSubview(pplOfLabel)
        pplOfLabel.translatesAutoresizingMaskIntoConstraints = false
        pplOfLabel.text = "People Of"
        pplOfLabel.topAnchor.constraint(equalTo: pplOfButton.bottomAnchor, constant: 0).isActive = true
        pplOfLabel.bottomAnchor.constraint(equalTo: refButton.topAnchor, constant: -10).isActive = true
        pplOfLabel.heightAnchor.constraint(equalTo: pplOfButton.heightAnchor, multiplier: 0.4).isActive = true
        pplOfLabel.centerXAnchor.constraint(equalTo: pplOfButton.centerXAnchor, constant:0).isActive = true
        pplOfLabel.textColor = textColor

        
        let instagram = UIButton()
        view.addSubview(instagram)
        instagram.translatesAutoresizingMaskIntoConstraints = false
        instagram.addTarget(self, action: #selector(instaTap), for: .touchUpInside)
        instagram.heightAnchor.constraint(equalTo: instagram.widthAnchor, multiplier: 1.3).isActive = true
        instagram.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        instagram.setBackgroundImage(UIImage(named: "eggplant"), for: .normal)
        instagram.topAnchor.constraint(equalTo: refButton.bottomAnchor, constant: 0).isActive = true
        //instagram.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/5).isActive = true
        instagram.trailingAnchor.constraint(equalTo: refButton.leadingAnchor, constant: 0).isActive = true
        
        let instaLabel = UILabel()
        view.addSubview(instaLabel)
        instaLabel.translatesAutoresizingMaskIntoConstraints = false
        instaLabel.text = "Instagram"
        instaLabel.textColor = textColor
        instaLabel.topAnchor.constraint(equalTo: instagram.bottomAnchor, constant: 0).isActive = true
        instaLabel.heightAnchor.constraint(equalTo: instagram.heightAnchor, multiplier: 0.4).isActive = true
        instaLabel.centerXAnchor.constraint(equalTo: instagram.centerXAnchor, constant:0).isActive = true
        
        
        let quote = UIButton()
        view.addSubview(quote)
        quote.translatesAutoresizingMaskIntoConstraints = false
        quote.addTarget(self, action: #selector(quoteTap), for: .touchUpInside)
        quote.heightAnchor.constraint(equalTo: quote.widthAnchor, multiplier: 1.0).isActive = true
        quote.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        quote.setBackgroundImage(UIImage(named: "corn"), for: .normal)
        //quote.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/9).isActive = true
        quote.bottomAnchor.constraint(equalTo: refButton.centerYAnchor, constant: 0).isActive = true
        quote.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width/8).isActive = true
        
        let quoteLabel = UILabel()
        view.addSubview(quoteLabel)
        quoteLabel.translatesAutoresizingMaskIntoConstraints = false
        quoteLabel.text = "Quotes"
        quoteLabel.topAnchor.constraint(equalTo: quote.bottomAnchor, constant: 0).isActive = true
        quoteLabel.heightAnchor.constraint(equalTo: quote.heightAnchor, multiplier: 0.4).isActive = true
        quoteLabel.centerXAnchor.constraint(equalTo: quote.centerXAnchor, constant:0).isActive = true
        quoteLabel.textColor = textColor
        
        
        let order = UIButton()
        view.addSubview(order)
        order.translatesAutoresizingMaskIntoConstraints = false
        order.addTarget(self, action: #selector(openTapingo), for: .touchUpInside)
        order.setBackgroundImage(UIImage(named: "onion"), for: .normal)
        order.titleLabel?.textAlignment = .center
        order.heightAnchor.constraint(equalTo: order.widthAnchor, multiplier: 1.0).isActive = true
        order.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        //order.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 - self.view.frame.height/9).isActive = true
        order.bottomAnchor.constraint(equalTo: refButton.centerYAnchor, constant: 0).isActive = true
        order.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: self.view.frame.width*5.5/8).isActive = true
        
        let orderLabel = UILabel()
        view.addSubview(orderLabel)
        orderLabel.translatesAutoresizingMaskIntoConstraints = false
        orderLabel.text = "Order Online"
        orderLabel.topAnchor.constraint(equalTo: order.bottomAnchor, constant: 0).isActive = true
        orderLabel.heightAnchor.constraint(equalTo: order.heightAnchor, multiplier: 0.4).isActive = true
        orderLabel.centerXAnchor.constraint(equalTo: order.centerXAnchor, constant:0).isActive = true
        orderLabel.textColor = textColor
        
        
        let history = UIButton()
        view.addSubview(history)
        history.translatesAutoresizingMaskIntoConstraints = false
        history.addTarget(self, action: #selector(historyFunc), for: .touchUpInside)
        history.heightAnchor.constraint(equalTo: history.widthAnchor, multiplier: 1.0).isActive = true
        history.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        history.setBackgroundImage(UIImage(named: "greenpepper"), for: .normal)
        //history.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.frame.height/2 + self.view.frame.height/16).isActive = true
        history.topAnchor.constraint(equalTo: refButton.bottomAnchor, constant: 0).isActive = true
        history.leadingAnchor.constraint(equalTo: refButton.trailingAnchor, constant: 0).isActive = true
        
        let historyLabel = UILabel()
        view.addSubview(historyLabel)
        historyLabel.translatesAutoresizingMaskIntoConstraints = false
        historyLabel.text = "History"
        historyLabel.topAnchor.constraint(equalTo: history.bottomAnchor, constant: 0).isActive = true
        historyLabel.heightAnchor.constraint(equalTo: history.heightAnchor, multiplier: 0.4).isActive = true
        historyLabel.centerXAnchor.constraint(equalTo: history.centerXAnchor, constant:0).isActive = true
        historyLabel.textColor = textColor
    }
    
    //opens the quote page
    @objc func quoteTap() {
        present(Quote(), animated: true, completion: nil)
    }
    
    //links to the fueled instagram page
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
    
    //TODO when the people of button is tapped
    @objc func pplOfTap() {
        
    }
    
    //links to the tapingo page
    @objc func openTapingo() {
        let url = URL(string: "https://www.tapingo.com/order/restaurant/ming-dynasty-restaurant-lounge-posind-uva/")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    //opens the history page
    @objc func historyFunc() {
        present(History(), animated: true, completion: nil)
    }
}

//used for making custom colors
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
