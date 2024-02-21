//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by Павел Чвыров on 21.02.2024.
//

import UIKit

class FirstViewController: UIViewController {
    
    let data = "Данные"
    
    init(){
        super.init(nibName: nil, bundle: nil)
        
        printFunction()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        title = "First VC"
        printFunction()
    }
    
    override func loadView() {
        super.loadView()
        printFunction()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printFunction()
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
        print("Нажат переход c 1VC на 2VC")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        printFunction()
        if let destination = segue.destination as? SecondViewController,
           segue.identifier == "FirstIdentifier"{
            destination.data = data
        }
    }

}
