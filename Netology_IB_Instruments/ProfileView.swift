//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Ilya on 03.02.2022.
//

import UIKit


@IBDesignable class ProfileView: UIView {
    
    let nibName = "ProfileView"
   
    var view: UIView!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userBirthday: UILabel!
    @IBOutlet weak var userCity: UILabel!
    @IBOutlet weak var userText: UITextView!

    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        addSubview(view)
    }

    func loadViewFromNib() -> UIView {

        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView

        return view
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    } 
}

