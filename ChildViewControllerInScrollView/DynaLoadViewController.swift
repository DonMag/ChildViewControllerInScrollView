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
			
			new.view.translatesAutoresizingMaskIntoConstraints = false
			
			new.view.topAnchor.constraint(equalTo: justOneContainer.topAnchor, constant: 0.0).isActive = true
			new.view.bottomAnchor.constraint(equalTo: justOneContainer.bottomAnchor, constant: 0.0).isActive = true
			new.view.leadingAnchor.constraint(equalTo: justOneContainer.leadingAnchor, constant: 0.0).isActive = true
			new.view.trailingAnchor.constraint(equalTo: justOneContainer.trailingAnchor, constant: 0.0).isActive = true
			
			currentSubVC = new
		
		}
		
	}

}

