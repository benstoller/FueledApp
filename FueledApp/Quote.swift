//
//  History.swift
//  FueledApp
//
//  Created by Ben Stoller on 4/4/19.
//  Copyright © 2019 Ben Stoller. All rights reserved.
//

import UIKit

class Quote: UIViewController {
    let bodyText = UILabel()
    let mainStack = UIStackView()
    let TitleImage = UIImageView()
    var listOfQuotes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeQuoteList();
        //if list is empty, app will crash
        let curQuote = listOfQuotes.randomElement()!
        
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
        instr += curQuote
        bodyText.text = instr
        bodyText.textAlignment = .center
        bodyText.textColor = .green
        
        self.view.backgroundColor = .blue
        
        mainStack.addArrangedSubview(menuButton)
        menuButton.widthAnchor.constraint(equalTo: mainStack.widthAnchor, multiplier: 1).isActive = true
        menuButton.heightAnchor.constraint(equalTo: menuButton.widthAnchor, multiplier: 0.17).isActive = true
    }
    
    let menuButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Home", for: .normal)
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
    
    func makeQuoteList() {
        listOfQuotes.append("Let things taste the way they are")
        listOfQuotes.append("A healthy diet is a solution to many of our health-care problems. It's the most important solution")
        listOfQuotes.append("Let food be thy medicine, thy medicine shall be thy food.")
        listOfQuotes.append("Eat food. Not too much. Mostly plants.")
        listOfQuotes.append("The healthy man is the thin man. But you don't need to go hungry for it: Remove the flours, starches and sugars; that's all.")
        listOfQuotes.append("Juices of fruits and vegetables are pure gifts from Mother Nature and the most natural way to heal your body and make yourself whole again.")
        listOfQuotes.append("The greatest threat to our planet is the belief that someone else will save it.")
        listOfQuotes.append("There is no such thing as ‘away’. When we throw anything away it must go somewhere.")
        listOfQuotes.append("We do not inherit the Earth from our ancestors; we borrow it from our children")
        listOfQuotes.append("We cannot solve our problems with the same thinking we used when we created them")
        listOfQuotes.append("We never know the worth of water till the well is dry.")
        listOfQuotes.append("If it can’t be reduced, reused, repaired, rebuilt, refurbished, refinished, resold, recycled, or composted, then it should be restricted, designed or removed from production")
        listOfQuotes.append("We are living on this planet as if we had another one to go to")
        listOfQuotes.append("Buy less, choose well")
        listOfQuotes.append("At its core, the issue of a clean environment is a matter of public health.")
        listOfQuotes.append("Conservation is a state of harmony between men and land")
        
        listOfQuotes.append("A nation that destroys its soils destroys itself. Forests are the lungs of our land, purifying the air and giving fresh strength to our people.")
        listOfQuotes.append("We can’t just consume our way to a more sustainable world.")
        listOfQuotes.append("Nature holds the key to our aesthetic, intellectual, cognitive and even spiritual satisfaction")
        listOfQuotes.append("The natural environment sustains the life of all beings universally")
        listOfQuotes.append("Being green is more than just buying ‘eco’. It is an unshakable commitment to a sustainable lifestyle")
        listOfQuotes.append("The universe is not required to be in perfect harmony with human ambition")
        listOfQuotes.append("When the soil disappears, the soul disappears")
        listOfQuotes.append("A margin of life is developed by Nature for all living things – including man. All life forms obey Nature’s demands – except man, who has found ways of ignoring them")
        listOfQuotes.append("Healthy citizens are the greatest asset any country can have")
        listOfQuotes.append("To keep the body in good health is a duty, otherwise we shall not be able to keep our mind strong and clear")
        listOfQuotes.append("Each patient carries his own doctor inside him")
        listOfQuotes.append("1 billion people in the world are chronically hungry. 1 billion people are overweight")
        listOfQuotes.append("Eating crappy food isn't a reward — it's a punishment")
        listOfQuotes.append(" The first wealth is health")
        
        listOfQuotes.append("The Earth is what we all have in common")
        listOfQuotes.append("The ground's generosity takes in our compost and grows beauty! Try to be more like the ground.")
        listOfQuotes.append("Nature demands a gift for everything that it gives, so what we have to keep doing, is returning [leaves & compost materials] back to the soil, then we're continuously giving the gifts to nature, because we have a return cycle.")
        listOfQuotes.append(" The Earth does not belong to man; Man belongs to the Earth. This we know. All things are connected like the blood which unites one family. Whatever befalls the Earth befalls the sons of the Earth. Man did not weave the web of life, he is merely a strand in it. Whatever he does to the web, he does to himself ")
        listOfQuotes.append("Look deep into nature, and then you will understand everything better ")
        listOfQuotes.append("The good man is the friend of all living things ")
        listOfQuotes.append("A nation that destroys its soils destroys itself. Forests are the lungs of our land, purifying the air and giving fresh strength to our people ")
        listOfQuotes.append(" The environment is where we all meet; where all have a mutual interest; it is the one thing all of us share")
        listOfQuotes.append("He that plants trees loves others besides himself ")
        listOfQuotes.append("One of the first conditions of happiness is that the link between man and nature shall not be broken. ")
        listOfQuotes.append("You cannot get through a single day without having an impact on the world around you. What you do makes a difference and you have to decide what kind of a difference you want to make. ")
        listOfQuotes.append("The ultimate test of man’s conscience may be his willingness to sacrifice something today for future generations whose words of thanks will not be heard. ")
        listOfQuotes.append("We have forgotten how to be good guests, how to walk lightly on the earth as its other creatures do ")
        listOfQuotes.append("ood Production Accounts for 83% of Carbon Emissions Each Year")
        listOfQuotes.append(" We must cultivate our own garden. When man was put in the garden of Eden he was put there so that he should work, which proves that man was not born to rest")
        listOfQuotes.append("The glory of gardening: hands in the dirt, head in the sun, heart with nature. To nurture a garden is to feed not just the body, but the soul ")
        listOfQuotes.append("I grow plants for many reasons: to please my eye or to please my soul, to challenge the elements or to challenge my patience, for novelty or for nostalgia, but mostly for the joy in seeing them grow. ")
        listOfQuotes.append("A garden requires patient labor and attention. Plants do not grow merely to satisfy ambitions or to fulfill good intentions. They thrive because someone expended effort on them. ")
        listOfQuotes.append("A garden is a grand teacher. It teaches patience and careful watchfulness; it teaches industry and thrift; above all it teaches entire trust. ")
        listOfQuotes.append("Gardens are not made by singing 'Oh, how beautiful,' and sitting in the shade ")
        listOfQuotes.append("Everything that slows us down and forces patience, everything that sets us back into the slow circles of nature, is a help. Gardening is an instrument of grace ")
        listOfQuotes.append("The love of gardening is a seed once sown that never dies. ")
        listOfQuotes.append(" It is only the farmer who faithfully plants seeds in the Spring, who reaps a harvest in the Autumn.")
        listOfQuotes.append(" ")
        listOfQuotes.append(" If a tree dies, plant another in its place.")
        listOfQuotes.append(" The single greatest lesson the garden teaches is that our relationship to the planet need not be zero-sum, and that as long as the sun still shines and people still can plan and plant, think and do, we can, if we bother to try, find ways to provide for ourselves without diminishing the world.")
        listOfQuotes.append("A society grows great when old men plant trees whose shade they know they shall never sit in. ")
        listOfQuotes.append("The greatest fine art of the future will be the making of a comfortable living from a small piece of land. ")
        listOfQuotes.append("When the world wearies and society fails to satisfy, there is always the garden. ")
        listOfQuotes.append(" The soil is the great connector of lives, the source and destination of all. It is the healer and restorer and resurrector, by which disease passes into health, age into youth, death into life. Without proper care for it we can have no community, because without proper care for it we can have no life")
        listOfQuotes.append(" “The ultimate goal of farming is not the growing of crops, but the cultivation and perfection of human beings. ")
        listOfQuotes.append(" Good farmers, who take seriously their duties as stewards of Creation and of their land's inheritors, contribute to the welfare of society in more ways than society usually acknowledges, or even knows. These farmers produce valuable goods, of course; but they also conserve soil, they conserve water, they conserve wildlife, they conserve open space, they conserve scenery")
        listOfQuotes.append("Farming is a profession of hope ")
        listOfQuotes.append("Man must feel the Earth to know himself and recognize his values… God made life simple. It is man who complicates it. ")
        listOfQuotes.append(" The environment is everything that isn’t me. ")
        listOfQuotes.append("I think the environment should be put in the category of our national security. Defense of our resources is just as important as defense abroad. Otherwise what is there to defend ")
        listOfQuotes.append("He that plants trees loves others beside himself.  ")
        listOfQuotes.append("Like music and art, love of nature is a common language that can transcend political or social boundaries. – ")
        listOfQuotes.append("The wealth of the nation is its air, water, soil, forests, minerals, rivers, lakes, oceans, scenic beauty, wildlife habitats and biodiversity… that’s all there is. That’s the whole economy. That’s where all the economic activity and jobs come from. These biological systems are the sustaining wealth of the world. ")
        listOfQuotes.append("Come forth into the light of things, let nature be your teacher ")
        listOfQuotes.append(" Green is the prime color of the world, and that from which its loveliness arises. –")
        listOfQuotes.append(" The proper use of science is not to conquer nature but to live in it.")
        listOfQuotes.append("Let us permit nature to have her way. She understands her business better than we do ")
        listOfQuotes.append(" To cherish what remains of the Earth and to foster its renewal is our only legitimate hope of survival")
        listOfQuotes.append("The ultimate test of man’s conscience may be his willingness to sacrifice something today for future generations whose words of thanks will not be heard. ")
        listOfQuotes.append("The goal of life is to make your heartbeat match the beat of the universe, to match your nature with nature ")
        listOfQuotes.append("Factory farming is one of the biggest contributors to the most serious environmental problems. The meat industry causes more greenhouse gas emissions than all the cars, trucks, planes and ships in the world. ")
        listOfQuotes.append(" I don't like to see animals in pain. That was very uncomfortable to me. I don't like factory farming. I'm not an advocate for the meat industry.")
        listOfQuotes.append("While vegans and meat-eaters disagree, we can all be united in our fear and hatred for the horror that is factory farming. ")
        listOfQuotes.append("The greatness of a nation can be judged by the way its animals are treated.")
        listOfQuotes.append("When we eat factory-farmed meat we live, literally, on tortured flesh. Increasingly, that tortured flesh is becoming our own.")
        listOfQuotes.append(" Factory farming is the attitude that commodifies sentient life. ")
        listOfQuotes.append(" If slaughterhouses had glass walls, everyone would be a vegetarian.")
        listOfQuotes.append(" Ninety-nine percent of all land animals eaten or used to produce milk and eggs in the United States are factory farmed. So although there are important exceptions, to speak about eating animals today is to speak about factory farming.")
        listOfQuotes.append(" We consume the carcasses of creatures of like appetites, passions and organs with our own, and fill the slaughterhouses daily with screams of pain and fear.")
        listOfQuotes.append(" Think globally, act locally.")
        listOfQuotes.append("If people are prepared to eat locally and seasonally, then they probably do pretty well in terms of environmental impact.")
        listOfQuotes.append(" One of the most important lessons we can glean from the environmental movement is to 'think globally and act locally.")
        listOfQuotes.append("I always take the time to eat well and eat locally because it's common sense ")
        listOfQuotes.append(" We may freak out globally, but we suffer locally.")
        listOfQuotes.append("I hope people will learn more about agriculture in America. About locally grown farming and about water conservation. About how much pollution results from beef and pig farming.")
        listOfQuotes.append("I do a lot of reading about food and the food industry, so I try to eat locally and go to the farmer's market.")
        listOfQuotes.append("Our farmers feed the world ")
        listOfQuotes.append("Our deep respect for the land and its harvest is the legacy of generations of farmers who put food on our tables, preserved our landscape, and inspired us with a powerful work ethic. ")
        listOfQuotes.append(" Fast food is popular because it's convenient, it's cheap, and it tastes good. But the real cost of eating fast food never appears on the menu.")
        listOfQuotes.append(" If you want to know the taste of a pear, you must change the pear by eating it yourself. If you want to know the theory and methods of revolution, you must take part in revolution. All genuine knowledge originates in direct experience.")

    }
    
}
