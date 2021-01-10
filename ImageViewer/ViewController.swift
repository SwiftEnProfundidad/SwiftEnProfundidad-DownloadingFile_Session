//
//  ViewController.swift
//  ImageViewer
//
//  Created by Juan Carlos Merlos Albarracin on 28/12/20.
//  Copyright © 2020 Swift En Profundidad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  
    let imageUrls = [
        URL(string: "https://homepages.cae.wisc.edu/~ece533/images/boat.png")!,
        URL(string: "https://homepages.cae.wisc.edu/~ece533/images/goldhill.png")!,
        URL(string: "https://homepages.cae.wisc.edu/~ece533/images/barbara.png")!
    ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    displayImage(index: 0)
  }

  @IBAction func tappedSegment(_ sender: Any) {
    displayImage(index: segmentedControl.selectedSegmentIndex)
  }

  func displayImage(index: Int) {
      
//      guard let location = location,
//            let imageData = self.getImageData(location: location),
//            let image = UIImage(data: imageData) else { return }
    
  }
  
  func getImageData(location: URL) -> Data? {
    var imageData: Data? = nil
    do {
      try imageData = Data(contentsOf: location)
    } catch {
      
    }
    return imageData
    
  }
  

}

