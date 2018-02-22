//
//  SBOnlyViewController.swift
//  ChildViewControllerInScrollView
//
//  Created by Don Mag on 2/22/18.
//

import UIKit

class SBOnlyViewController: UIViewController {
	
	@IBOutlet var firstContainer: UIView!
	@IBOutlet var secondContainer: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        secondContainer.isHidden = true
    }

	@IBAction func didSwitchSegment(_ sender: UISegmentedControl) {
		print(#function, sender.selectedSegmentIndex)
		switch sender.selectedSegmentIndex {
		case 0:
			firstContainer.isHidden = false
			
		case 1:
			firstContainer.isHidden = true
			
		default: fatalError()
		}

		secondContainer.isHidden = !firstContainer.isHidden
		
	}

}
