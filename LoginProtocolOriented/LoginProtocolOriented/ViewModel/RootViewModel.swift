//
//  RootViewModel.swift
//  LoginProtocolOriented
//
//  Created by Vedat Dokuzkardeş on 18.12.2023.
//

import Foundation

class RootViewModel {
    
    private let loginStorageService : LoginStorageService
    
    weak var output : RootViewModelOutput?
    
    init(loginStorageService: LoginStorageService) {
        self.loginStorageService = loginStorageService
    }
    
    
    func checkLogin() {
        if let accessToken = UserDefaults.standard.string(forKey: "ACCESS_TOKEN"), !accessToken.isEmpty {
            output?.showMainApp()
        }else{
            output?.showLogin()
        }
    }
}
