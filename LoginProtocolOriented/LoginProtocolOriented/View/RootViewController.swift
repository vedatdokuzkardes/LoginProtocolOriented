//
//  ViewController.swift
//  LoginProtocolOriented
//
//  Created by Vedat Dokuzkardeş on 18.12.2023.
//

import UIKit

class RootViewController: UIViewController, RootViewModelOutput {
    
    private let viewModel : RootViewModel

    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        view.backgroundColor = .yellow
        
        viewModel.checkLogin()
    }
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        viewModel.output = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func showMainApp(){
        let mainViewController = MainViewController()
        navigationController?.present(mainViewController, animated: true)
    }
    
    func showLogin() {
        let loginViewContoller = LoginViewController()
        navigationController?.present(loginViewContoller, animated: true)
    }
}

