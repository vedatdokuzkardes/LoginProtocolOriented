//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Vedat Dokuzkardeş on 18.12.2023.
//

import Foundation

protocol LoginStorageService {
    
    
    var userAccessTokenKey : String {get}
    func setUserAccessToken(token: String)
    func getUserAccessToken() -> String?
    
}
