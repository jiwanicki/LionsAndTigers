//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Joseph Iwanicki on 10/30/14.
//  Copyright (c) 2014 JosephIwanicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tigers] = []
    var lions: [Lion] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tigers()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "tiger.jpg")
        
        myTigers.append(myTiger)
        
        
        println("My Tiger's Name is:\(myTiger.name), it's age is \(myTiger.age), it's breed is\(myTiger.breed), and it's image is\(myTiger.image)")
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
       
        // creating mutliple tigers from Struct
       
        var secondTiger = Tigers()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "Lion.jpg")
        
        var thirdTiger = Tigers()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malaysian Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalaysiaTiger.jpg")
        
        var forthTiger = Tigers()
        forthTiger.name = "Spar"
        forthTiger.breed = "Sibarian Tiger"
        forthTiger.age = 6
        forthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        var fifthTiger = Tigers()
        fifthTiger.name = "Jaspar"
        fifthTiger.breed = "Indonisa Tiger"
        fifthTiger.age = 10
        fifthTiger.image = UIImage(named: "tiger.jpg")
        
        var sixthTiger = Tigers()
        sixthTiger.name = "nigel, lewis"
        sixthTiger.breed = "Indonsia Tiger"
        sixthTiger.age = 1
        sixthTiger.image = UIImage(named: "tigerCub.jpg")
        
        var seventhTiger = Tigers()
        seventhTiger.name = "Bomba"
        sixthTiger.breed = "Sibarian Tiger"
        sixthTiger.age = 2
        sixthTiger.image = UIImage(named: "DadCub.jpg")
        
        var eightTiger = Tigers()
        eightTiger.name = "Katsu, Cooper"
        eightTiger.breed = "Malaysian Tiger"
        eightTiger.age = 1
        eightTiger.image = UIImage(named: "snarlCub.jpg")
        
        var ninethTiger = Tigers()
        ninethTiger.name = "Justin"
        ninethTiger.breed = "African lion"
        ninethTiger.age = 1
        ninethTiger.image = UIImage(named: "LionRock.jpg")
        
        var tenthTiger = Tigers()
        tenthTiger.name = "Jenna, Max, Jona"
        tenthTiger.breed = "Sibarian Tiger"
        tenthTiger.age = 1
        tenthTiger.image = UIImage(named: "WhiteLionCub.png")
    
        myTigers += [secondTiger, thirdTiger, forthTiger, fifthTiger, sixthTiger, seventhTiger, eightTiger, ninethTiger, tenthTiger]
        
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named:"tiger.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        var lionness = Lion()
        lionness.age = 7
        lionness.isAlphaMale = false
        lionness.image = UIImage(named:"Lion.jpg")
        lionness.name = "Sarabi"
        lionness.subspecies = "Barbary"
        
        self.lions += [lion, lionness]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
//      assigns random indexing to fix bug displaying same tiger twice or more
        
        var randomIndex:Int
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        } while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        let tiger = myTigers[randomIndex]
       
//        myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCurlUp, animations: {
            
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            
            }, completion: {
                (finsihed: Bool) -> () in
        })

        
        
    }
}

