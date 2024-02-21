//
//  ViewController.swift
//  LifeCycle
//
//  Created by Павел Чвыров on 21.02.2024.
//

import UIKit


extension UIViewController{
    func printFunction(function : String = #function){
        print("\(title ?? ""): \(function)")
    }
}

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var dataLabel: UILabel!
    var data : String?
    
    init(){
        super.init(nibName: nil, bundle: nil)
        
        printFunction()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        title = "Second VC"
        printFunction()
    }
    
    override func loadView() {
        super.loadView()
        printFunction()
    }
    @objc func backToRootVCAction() {
        _ = self.navigationController?.popToRootViewController(animated: true)
        print("Нажата кнопка назад (c 2VC на 1VC)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let backToRootVCButton = UIBarButtonItem.init(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backToRootVCAction))
        self.navigationItem.setLeftBarButton(backToRootVCButton, animated: true)
        
        dataLabel.text = data
        printFunction()
        view.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0..<255))/255,
                                       green: CGFloat(Int.random(in: 0..<255))/255,
                                       blue: CGFloat(Int.random(in: 0..<255))/255,
                                       alpha: 1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printFunction()
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        printFunction()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        printFunction()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        printFunction()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printFunction()
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        printFunction()
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printFunction()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printFunction()
    }
    
    deinit{
        printFunction()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        print("Нажат переход с 2VC на 3VC")
    }
   
}

