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
        vc.view.frame = contentView.bounds  // or, better, turn off `translatesAutoresizingMaskIntoConstraints` and then define constraints for this subview
        contentView.addSubview(vc.view)
//        vc.didMove(toParent: self)
        
    }


}

