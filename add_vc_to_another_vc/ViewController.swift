//
//  ViewController.swift
//  add_vc_to_another_vc
//
//  Created by Pu Yue - PU YUE on 2022/06/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let vc = storyboard!.instantiateViewController(withIdentifier: "CollectionViewController")
        self.addChild(vc)
        vc.view.frame = contentView.bounds//外部view的内size赋值给内部view的外size  // or, better, turn off `translatesAutoresizingMaskIntoConstraints` and then define constraints for this subview
        contentView.addSubview(vc.view)
        vc.didMove(toParent: self)
        //For more information about why this addChild (previously called addChildViewController) and didMove(toParent:) (previously called didMove(toParentViewController:)) are necessary, see WWDC 2011 video #102 - Implementing UIViewController Containment. In short, you need to ensure that your view controller hierarchy stays in sync with your view hierarchy, and these calls to addChild and didMove(toParent:) ensure this is the case.
        
        // Also see Creating Custom Container View Controllers in the View Controller Programming Guide.
        
    }


}

