//
//  ChildVCs.swift
//  ChildViewControllerInScrollView
//
//  Created by Don Mag on 2/22/18.
//

import UIKit

class DMFirstViewController: UIViewController {
	
	@IBAction func didPressTop(_ sender: Any) {
		print(type(of: self), #function)
	}
	@IBAction func didPressMiddle(_ sender: Any) {
		print(type(of: self), #function)
	}
	@IBAction func didPressBottom(_ sender: Any) {
		print(type(of: self), #function)
	}
	
}

class DMSecondViewController: UIViewController {
	
	@IBOutlet var theProofLabel: UILabel!
	
	@IBAction func didPressTop(_ sender: Any) {
		print(type(of: self), #function)
		
		var s = "\n"
		for i in 1...5 {
			s += "\nAdded Line \(i)"
		}
		if let t = theProofLabel.text {
			theProofLabel.text = t + s
		}
		
	}
	@IBAction func didPressMiddle(_ sender: Any) {
		print(type(of: self), #function)
	}
	@IBAction func didPressBottom(_ sender: Any) {
		print(type(of: self), #function)
	}
	
}

class DMThirdViewController: UIViewController {
	
	@IBOutlet var theProofLabel: UILabel!
	
	@IBAction func didPressTop(_ sender: Any) {
		print(type(of: self), #function)
		
		var s = "\n"
		for i in 1...5 {
			s += "\nAdded Line \(i)"
		}
		if let t = theProofLabel.text {
			theProofLabel.text = t + s
		}
		
	}
	@IBAction func didPressMiddle(_ sender: Any) {
		print(type(of: self), #function)
	}
	@IBAction func didPressBottom(_ sender: Any) {
		print(type(of: self), #function)
	}
	
}

