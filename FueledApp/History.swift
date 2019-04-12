//
//  History.swift
//  FueledApp
//
//  Created by Ben Stoller on 4/4/19.
//  Copyright © 2019 Ben Stoller. All rights reserved.
//

import UIKit

class History: UIViewController {
    let bodyText = UILabel()
    let mainStack = UIStackView()
    let TitleImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(mainStack)
        //setup main stack
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        mainStack.axis = .vertical
        mainStack.distribution = .fill
        mainStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        mainStack.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1.0).isActive = true
        mainStack.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        
        //setup title image
        mainStack.addArrangedSubview(TitleImage)
        TitleImage.translatesAutoresizingMaskIntoConstraints = false
        TitleImage.image = UIImage(named: "onion")
        TitleImage.heightAnchor.constraint(equalTo: TitleImage.widthAnchor, multiplier: 292/1144).isActive = true
        TitleImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        TitleImage.contentMode = .scaleAspectFit
        
        mainStack.addArrangedSubview(bodyText)
        bodyText.translatesAutoresizingMaskIntoConstraints = false
        bodyText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        //text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.0)
        //text.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0)
        bodyText.numberOfLines = 0
        //text.layer.borderColor = UIColor(red: 2, green: 234, blue: 255).cgColor
        //text.layer.borderWidth = 2
        bodyText.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        bodyText.font = UIFont.init(name: "Menlo", size: 50)
        bodyText.adjustsFontSizeToFitWidth = true
        //text.baselineAdjustment = .alignCenters
        bodyText.minimumScaleFactor = 0.1
        
        var instr = ""
        instr += "\nHistory text"
        bodyText.text = instr
        bodyText.textColor = .green
        
        
        mainStack.addArrangedSubview(menuButton)
        menuButton.widthAnchor.constraint(equalTo: mainStack.widthAnchor, multiplier: 1).isActive = true
        menuButton.heightAnchor.constraint(equalTo: menuButton.widthAnchor, multiplier: 0.17).isActive = true
    }
    
    let menuButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Menu", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(menu), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor.white
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.titleLabel?.font = UIFont.init(name: "Menlo", size: 15)
        return button
    }()
    
    @objc func menu() {
        self.dismiss(animated:true, completion: nil)
    }
    
}
