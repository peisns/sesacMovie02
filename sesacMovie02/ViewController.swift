//
//  ViewController.swift
//  sesacMovie02
//
//  Created by Brother Model on 2022/07/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var previewPoster03: UIImageView!
    @IBOutlet weak var previewPoster02: UIImageView!
    @IBOutlet weak var previewPoster01: UIImageView!
    @IBOutlet weak var mainBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        previewPoster01.layer.cornerRadius = previewPoster01.frame.height / 2
        previewPoster02.layer.cornerRadius = previewPoster01.frame.height / 2
        previewPoster03.layer.cornerRadius = previewPoster01.frame.height / 2
        
        previewPoster01.layer.borderColor = UIColor.white.cgColor
        previewPoster01.layer.borderWidth = 1
        previewPoster02.layer.borderColor = UIColor.white.cgColor
        previewPoster02.layer.borderWidth = 1
        previewPoster03.layer.borderColor = UIColor.white.cgColor
        previewPoster03.layer.borderWidth = 1
        
    }

    @IBAction func mainPlayBtn(_ sender: UIButton) {
        previewPoster01.image = UIImage(named: "moviePoster0\(Int.random(in: 1...5))")
        previewPoster02.image = UIImage(named: "moviePoster0\(Int.random(in: 1...5))")
        previewPoster03.image = UIImage(named: "moviePoster0\(Int.random(in: 1...5))")
        mainBackground.image = UIImage(named: "moviePoster0\(Int.random(in: 1...5))")

    }
    
}

