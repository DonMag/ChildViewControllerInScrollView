//
//  DonMagV2ViewController.swift
//  ChildViewControllerInScrollView
//
//  Created by Don Mag on 2/22/18.
//

import UIKit

class DonMagV2ViewController: UIViewController {

	@IBOutlet var scrollView: UIScrollView!
	
	lazy var firstVC: DMFirstViewController! = storyboard?.instantiateViewController(withIdentifier: "dmfirst") as! DMFirstViewController
	lazy var secondVC: DMSecondViewController! = storyboard?.instantiateViewController(withIdentifier: "dmsecond") as! DMSecondViewController
	
	var currentSubViewController: UIViewController?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.addChildViewController(firstVC)
		self.addChildViewController(secondVC)
		firstVC.didMove(toParentViewController: self)
		secondVC.didMove(toParentViewController: self)
		
	}
	
	@IBAction func didSwitchSegment(_ sender: UISegmentedControl) {
		print(#function, sender.selectedSegmentIndex)
		switch sender.selectedSegmentIndex {
		case 0:
			presentSubViewController(firstVC)
			
		case 1:
			presentSubViewController(secondVC)
			
		default: fatalError()
		}
		
	}
	
	func presentSubViewController(_ new: UIViewController) {
		
		if let old = currentSubViewController {
			old.view.removeFromSuperview()
		}
		
		// need to set the width, otherwise
		// we get horizontal scrolling on smaller devices
		// and not-filled-width on larger devices
		// (unless we *want* that result)
		new.view.frame.size.width = scrollView.frame.size.width
		
		scrollView.addSubview(new.view)
		
		// if "old view" was taller than "new view", and we were
		// scrolled down, we'll get auto-layout errors due to invalid scroll offsets
		// so, reset scroll to top when loading new view
		scrollView.contentOffset = CGPoint.zero
		
		// this will allow auto-layout to set the scrollContent size
		new.view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0.0).isActive = true
		new.view.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0.0).isActive = true
		new.view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0.0).isActive = true
		new.view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0.0).isActive = true
		
		currentSubViewController = new
	}
	
}



