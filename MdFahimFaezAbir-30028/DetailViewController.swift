//
//  DetailViewController.swift
//  MdFahimFaezAbir-30028
//
//  Created by Bjit on 6/12/22.
//

import UIKit

class DetailViewController: UIViewController {
    //var delegate: ViewController?
    @IBOutlet weak var bgColor: UIView!
    var desc: String = ""
    var img: String = ""
    var playerName: String = ""
    var color: UIColor?
    var labelColor: UIColor?
    var playerNameColor: UIColor?
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var playerNames: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelView.text = desc
        playerNames.text = playerName
        imgView.image = UIImage(named: img)
        bgColor.backgroundColor  = color
        labelView.textColor = labelColor
        playerNames.textColor = playerNameColor
        // Do any additional setup after loading the view.
    }
    

}
