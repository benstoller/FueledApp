//
//  History.swift
//  FueledApp
//
//  Created by Ben Stoller on 4/4/19.
//  Copyright © 2019 Ben Stoller. All rights reserved.
//

import UIKit

class History: UIViewController {
    //text for describing the history
    let bodyText = UILabel()
    //container for holding everything together
    let mainStack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .black
        view.layer.contents = #imageLiteral(resourceName: "HistBackground").cgImage

        view.addSubview(mainStack)
        //setup main stack
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        //makes so all elements added are stacked top to bottom
        mainStack.axis = .vertical
        //sets the format of how each element fills the stack
        mainStack.distribution = .fill
        //sets the width to the width of the screen
        mainStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        //sets the height to the height of the visible area of the screen
        mainStack.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1.0).isActive = true
        //positions the stack
        mainStack.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        
        //add the text to the stack
        mainStack.addArrangedSubview(bodyText)
        bodyText.translatesAutoresizingMaskIntoConstraints = false
        bodyText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        //text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.0)
        //text.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0)
        //makes it so that there can be unlimited lines
        bodyText.numberOfLines = 0
        //makes so that the menu button is guranteed to be on the page
        bodyText.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        //set the text font
        bodyText.font = UIFont.init(name: "Menlo", size: 50)
        //these next two lines adjust the font to fit the page
        bodyText.adjustsFontSizeToFitWidth = true
        bodyText.minimumScaleFactor = 0.1
        
        //sets the text
        var instr = ""
        instr += "\nFueled was created by four students in the spring of 2015 at James Madison University. These students wanted to create a business that would bring locally sourced food on campus. The Fueled Food truck was born with the mission of providing our students with health conscious, ecological, and delicious meals."
        bodyText.text = instr
        //makes the text center aligned
        bodyText.textAlignment = .center
        //sets the color of the text
        bodyText.textColor = .white
        
        //adds the menu button to go back to the home page
        mainStack.addArrangedSubview(menuButton)
        menuButton.widthAnchor.constraint(equalTo: mainStack.widthAnchor, multiplier: 1).isActive = true
        menuButton.heightAnchor.constraint(equalTo: menuButton.widthAnchor, multiplier: 0.17).isActive = true
    }
    
    //creates the menu button
    let menuButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        //sets the label on the button
        button.setTitle("Home", for: .normal)
        //label color
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(menu), for: .touchUpInside)
        //rounds the button
        button.layer.cornerRadius = 5
        //sets button color
        button.backgroundColor = UIColor.white
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        //sets the font of the menu button text
        button.titleLabel?.font = UIFont.init(name: "Menlo", size: 15)
        return button
    }()
    
    //button to go back to the menu page
    @objc func menu() {
        self.dismiss(animated:true, completion: nil)
    }
    
}
