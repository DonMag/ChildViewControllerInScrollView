//
//  DynaLoadViewController.swift
//  ChildViewControllerInScrollView
//
//  Created by Don Mag on 2/27/18.
//

import UIKit

class DynaLoadViewController: UIViewController {

	@IBOutlet var justOneContainer: UIView!

	var currentSubVC: UIViewController?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		presentSubViewController("DynaFirst")
	}
	
	@IBAction func didSwitchSegment(_ sender: UISegmentedControl) {
		print(#function, sender.selectedSegmentIndex)
		switch sender.selectedSegmentIndex {
		
		case 0:
			presentSubViewController("DynaFirst")
			
		case 1:
			presentSubViewController("DynaSecond")
			
		case 2:
			presentSubViewController("DynaThird")
			
		default: fatalError()
		}
		
		
	}
	
	func presentSubViewController(_ vcToLoad: String) {
		
		if let old = currentSubVC {
			old.willMove(toParentViewController: nil)
			old.view.removeFromSuperview()
			old.removeFromParentViewController()
		}
		
		if let new = storyboard?.instantiateViewController(withIdentifier: vcToLoad) {
		
			self.addChildViewController(new)
			new.didMove(toParentViewController: self)
			justOneContainer.addSubview(new.view)
			
/*
			Note: the "root" view loaded by instantiateViewController uses an AutoresizingMask created / defined by IB
			
			You can either set its frame with:
			
				new.view.frame = justOneContainer.bounds
			
			or, you can set new.view.translatesAutoresizingMaskIntoConstraints to false, and add constraints:

				new.view.translatesAutoresizingMaskIntoConstraints = false
			
				new.view.topAnchor.constraint(equalTo: justOneContainer.topAnchor, constant: 0.0).isActive = true
				new.view.bottomAnchor.constraint(equalTo: justOneContainer.bottomAnchor, constant: 0.0).isActive = true
				new.view.leadingAnchor.constraint(equalTo: justOneContainer.leadingAnchor, constant: 0.0).isActive = true
				new.view.trailingAnchor.constraint(equalTo: justOneContainer.trailingAnchor, constant: 0.0).isActive = true

			I don't believe there is an inherent benefit to one or the other
*/
			
			new.view.frame = justOneContainer.bounds
			
//			new.view.translatesAutoresizingMaskIntoConstraints = false
//
//			new.view.topAnchor.constraint(equalTo: justOneContainer.topAnchor, constant: 0.0).isActive = true
//			new.view.bottomAnchor.constraint(equalTo: justOneContainer.bottomAnchor, constant: 0.0).isActive = true
//			new.view.leadingAnchor.constraint(equalTo: justOneContainer.leadingAnchor, constant: 0.0).isActive = true
//			new.view.trailingAnchor.constraint(equalTo: justOneContainer.trailingAnchor, constant: 0.0).isActive = true
			
			currentSubVC = new
		
		}
		
	}

}

