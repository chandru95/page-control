//
//  ViewController.swift
//  page control
//
//  Created by Admin on 05/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titlelabel: UILabel!
    
    
    @IBOutlet weak var subtitle1: UILabel!
    
    @IBOutlet weak var subtitle2: UILabel!
    
    
    @IBOutlet weak var subtitle3: UILabel!
    @IBOutlet weak var pagecontrol: UIPageControl!
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var skipbutton: UIButton!
    
    
    @IBOutlet weak var nextbutton: UIButton!
    
    @IBOutlet weak var previousbutton: UIButton!
    
    @IBOutlet weak var donebutton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pagecontrol.currentPage = 0
       // pagecontrol.isHidden = true
        donebutton.isHidden = true
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeleft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeleft)
        
        titlelabel.text = "24 Hours Delivery"
        subtitle1.text = "Water 24 reatches you with in 24 hours"
        subtitle2.text = "your order will be delivered on or before 24 hours "
        subtitle3.isHidden = true
        image.image = UIImage(named: "img1")
        let text = (titlelabel.text)!
        let underlineattristring = NSMutableAttributedString(string: text)
        let tearmrange = (text as NSString).range(of: "24 Hours")
        underlineattristring.addAttribute (.foregroundColor, value: UIColor.red, range: tearmrange)
        titlelabel.attributedText = underlineattristring
        let text1 = (subtitle2.text)!
        print(("Text1 \(text1)"))
        let  underlineattristring1 = NSMutableAttributedString(string: text1)
        let tearmrange1 = (text1 as NSString).range(of: "24 hours")
        underlineattristring1.addAttribute (.foregroundColor, value: UIColor.blue, range:   tearmrange1)
        subtitle2.attributedText = underlineattristring1
        print("red\(subtitle2.attributedText!)")
        previousbutton.isHidden = true
        skipbutton.isHidden = false
    }
    
    @objc func respondToSwipeGesture (gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                if pagecontrol.currentPage == 2{
                    pagecontrol.currentPage = 1
                    subtitle3.isHidden = false
                    print("Swiped right")
                    titlelabel.text = "Purity"
                    subtitle1.text = "Water 24 cares your health"
                    subtitle2.text = "We provide pure and pure rich water "
                    subtitle3.text = "On the best care of your hygiene, no cans are used more than 20 times"
                    let text = (subtitle3.text)!
                    let tearmrange = (text as NSString).range(of: "20 times")
                    
                    let underlineattristring = NSMutableAttributedString(string: text);underlineattristring.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.blue, range: tearmrange); subtitle3.attributedText = underlineattristring
                    image.image = UIImage(named: "img2")
                    previousbutton.isHidden = false
                    skipbutton.setTitle("Skip", for: .normal)
                    //pagecontrol.isHidden = true
                    donebutton.isHidden = true
                    nextbutton.isHidden = false
                    skipbutton.isHidden = false
                    
                }
                else if pagecontrol.currentPage == 1{
                    pagecontrol.currentPage = 0
                    print("Swiped right")
                    titlelabel.text = "24 Hours Delivery"
                    subtitle1.text = "Water 24 reatches you with in 24 hours"
                    subtitle2.text = "your order will be delivered on or before 24 hours "
                    let text = (titlelabel.text)!
                    let tearmrange = (text as NSString).range(of: "24 Hours")
                    
                    let underlineattristring = NSMutableAttributedString(string: text);underlineattristring.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.red, range: tearmrange); titlelabel.attributedText = underlineattristring
                    let text1 = (subtitle2.text)!
                    let tearmrange1 = (text1 as NSString).range(of: "24 hours")
                    
                    let underlineattristring1 = NSMutableAttributedString(string: text1);underlineattristring1.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.blue, range: tearmrange1); subtitle2.attributedText = underlineattristring1
                    subtitle3.isHidden = true
                    image.image = UIImage(named: "img1")
                    previousbutton.isHidden = true
                    skipbutton.setTitle("Skip", for: .normal)
                    //pagecontrol.isHidden = true
                    donebutton.isHidden = true
                    nextbutton.isHidden = false
                    skipbutton.isHidden = false
                    
                }
            case UISwipeGestureRecognizer.Direction.left:
                if pagecontrol.currentPage == 0{
                    pagecontrol.currentPage = 1
                    subtitle3.isHidden = false
                    print("Swiped left")
                    titlelabel.text = "Purity"
                    subtitle1.text = "Water 24 cares your health"
                    subtitle2.text = "We provide pure and pure rich water "
                    subtitle3.text = "On the best care of your hygiene, no cans are used more than 20 times"
                    let text = (subtitle3.text)!
                    let tearmrange = (text as NSString).range(of: "20 times")
                    
                    let underlineattristring = NSMutableAttributedString(string: text);underlineattristring.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.blue, range: tearmrange); subtitle3.attributedText = underlineattristring
                    image.image = UIImage(named: "img2")
                    previousbutton.isHidden = false
                    skipbutton.setTitle("Skip", for: .normal)
                    //pagecontrol.isHidden = true
                    donebutton.isHidden = true
                    nextbutton.isHidden = false
                    skipbutton.isHidden = false
                    
                }
                else if pagecontrol.currentPage == 1{
                    pagecontrol.currentPage = 2
                    print("Swiped left 1")
                    titlelabel.text = "Market"
                    subtitle1.text = "Water 24 Valuable for all "
                    subtitle2.text = "on service attacts 5 million users "
                    subtitle3.isHidden = true
                    image.image = UIImage(named: "img3")
                    previousbutton.isHidden = false
                    //pagecontrol.isHidden = true
                    donebutton.isHidden = false
                    nextbutton.isHidden = true
                    skipbutton.isHidden = true
                    
                }
                
                
            default:
                break
            }
        }
    }
    
    
    
    
    
    
    @IBAction func skipbutton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
        self.present(vc, animated: true)
        
    }
    
    @IBAction func donebutton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
        self.present(vc, animated: true)
        
    }
    
    
    @IBAction func previousbutton(_ sender: Any) {
        if pagecontrol.currentPage == 2{
            pagecontrol.currentPage = 1
            subtitle3.isHidden = false
            print("Swiped right")
            titlelabel.text = "Purity"
            subtitle1.text = "Water 24 cares your health"
            subtitle2.text = "We provide pure and pure rich water "
            subtitle3.text = "On the best care of your hygiene, no cans are used more than 20 times"
            let text = (subtitle3.text)!
            let tearmrange = (text as NSString).range(of: "20 times")
            
            let underlineattristring = NSMutableAttributedString(string: text);underlineattristring.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.blue, range: tearmrange); subtitle3.attributedText = underlineattristring
            image.image = UIImage(named: "img2")
            previousbutton.isHidden = false
            skipbutton.setTitle("Skip", for: .normal)
            pagecontrol.isHidden = true
            donebutton.isHidden = true
            nextbutton.isHidden = false
            
        }
        else if pagecontrol.currentPage == 1{
            pagecontrol.currentPage = 0
            print("Swiped right")
            titlelabel.text = "24 Hours Delivery"
            subtitle1.text = "Water 24 reatches you with in 24 hours"
            subtitle2.text = "your order will be delivered on or before 24 hours "
            let text = (titlelabel.text)!
            let tearmrange = (text as NSString).range(of: "24 Hours")
            
            let underlineattristring = NSMutableAttributedString(string: text);underlineattristring.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.red, range: tearmrange); titlelabel.attributedText = underlineattristring
            let text1 = (subtitle2.text)!
            let tearmrange1 = (text1 as NSString).range(of: "24 hours")
            
            let underlineattristring1 = NSMutableAttributedString(string: text1);underlineattristring1.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.blue, range: tearmrange1); subtitle2.attributedText = underlineattristring1
            subtitle3.isHidden = true
            image.image = UIImage(named: "img1")
            previousbutton.isHidden = true
            skipbutton.setTitle("Skip", for: .normal)
            pagecontrol.isHidden = true
            donebutton.isHidden = true
            nextbutton.isHidden = false
            skipbutton.isHidden = false
            
        }
    }
    
    
    @IBAction func nextbutton(_ sender: Any) {
        if pagecontrol.currentPage == 0{
            pagecontrol.currentPage = 1
            subtitle3.isHidden = false
            print("Swiped left")
            titlelabel.text = "Purity"
            subtitle1.text = "Water 24 cares your health"
            subtitle2.text = "We provide pure and pure rich water "
            subtitle3.text = "On the best care of your hygiene, no cans are used more than 20 times"
            let text = (subtitle3.text)!
            let tearmrange = (text as NSString).range(of: "20 times")
            
            let underlineattristring = NSMutableAttributedString(string: text);underlineattristring.addAttribute (NSAttributedString.Key .foregroundColor, value: UIColor.blue, range: tearmrange); subtitle3.attributedText = underlineattristring
            image.image = UIImage(named: "img2")
            previousbutton.isHidden = false
            skipbutton.setTitle("Skip", for: .normal)
            pagecontrol.isHidden = true
            donebutton.isHidden = true
            nextbutton.isHidden = false
            skipbutton.isHidden = false
        }
        else{
            pagecontrol.currentPage = 2
            print("Swiped left 1")
            titlelabel.text = "Market"
            subtitle1.text = "Water 24 Valuable for all "
            subtitle2.text = "on service attacts 5 million users "
            subtitle3.isHidden = true
            image.image = UIImage(named: "img3")
            previousbutton.isHidden = false
            pagecontrol.isHidden = true
            donebutton.isHidden = false
            nextbutton.isHidden = true
            skipbutton.isHidden = true
            
        }
    }
}
