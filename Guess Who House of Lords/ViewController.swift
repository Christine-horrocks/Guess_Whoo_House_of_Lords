//
//  ViewController.swift
//  Guess the Member of the House of Lords
//
//  Created by HORROCKS, Christine on 25/06/2018.
//  Copyright © 2018 HORROCKS, Christine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Guess Who?: House of Lords Edition"
        self.view.backgroundColor=UIColor.white
        
        setupViews()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func btnGetStartedAction1() {
        let v=QuizVC()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    @objc func btnGetStartedAction2() {
        let v=QuizVCHard()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 400).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 250).isActive=true
        
        self.view.addSubview(btnGetStarted1)
        btnGetStarted1.heightAnchor.constraint(equalToConstant: 100).isActive=true
        btnGetStarted1.widthAnchor.constraint(equalToConstant: 250).isActive=true
        btnGetStarted1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnGetStarted1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400).isActive=true
        
        self.view.addSubview(btnGetStarted2)
        btnGetStarted2.heightAnchor.constraint(equalToConstant: 100).isActive=true
        btnGetStarted2.widthAnchor.constraint(equalToConstant: 250).isActive=true
        btnGetStarted2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnGetStarted2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 550).isActive=true
        
        self.view.addSubview(startingImage)
        startingImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive=true
        startingImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        startingImage.widthAnchor.constraint(equalToConstant: 400).isActive=true
        startingImage.heightAnchor.constraint(equalToConstant: 250).isActive=true
        
    }
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="Guess Who?"
        lbl.textColor=UIColor.darkGray
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 46)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnGetStarted1: UIButton = {
        let btn=UIButton()
        btn.setTitle("Commence Easy", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 26)
        btn.backgroundColor=UIColor(red:0.70, green:0.00, blue:0.00, alpha:1.0)
        btn.layer.cornerRadius=5
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnGetStartedAction1), for: .touchUpInside)
        return btn
    }()
    
    let btnGetStarted2: UIButton = {
        let btn=UIButton()
        btn.setTitle("Commence Hard", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 26)
        btn.backgroundColor=UIColor(red:0.50, green:0.00, blue:0.00, alpha:1.0)
        btn.layer.cornerRadius=5
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnGetStartedAction2), for: .touchUpInside)
        return btn
    }()
    
    let startingImage: UIImageView = {
        let v=UIImageView()
        v.image = #imageLiteral(resourceName: "house_of_lords")
        v.contentMode = .scaleAspectFit
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
