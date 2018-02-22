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

