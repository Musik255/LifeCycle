//
//  ThirdViewController.swift
//  LifeCycle
//
//  Created by Павел Чвыров on 21.02.2024.
//

import UIKit

class ThirdViewController: UIViewController {

    init(){
        super.init(nibName: nil, bundle: nil)
        
        printFunction()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        title = "Third VC"
        printFunction()
    }
    
    override func loadView() {
        super.loadView()
        printFunction()
    }
    
    @objc func backToRootVCAction() {
        _ = self.navigationController?.popViewController(animated: true)
//        _ = self.navigationController?.popToRootViewController(animated: true)
        printFunction()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let backToRootVCButton = UIBarButtonItem.init(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backToRootVCAction))
        self.navigationItem.setLeftBarButton(backToRootVCButton, animated: true)
        print("Нажата кнопка назад (c 3VC на 2VC)")
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
}
