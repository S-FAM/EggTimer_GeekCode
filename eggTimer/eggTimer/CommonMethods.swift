//
//  CommonMethods.swift
//  eggTimer
//
//  Created by hyeonseok on 2022/05/23.
//

import Foundation

protocol HelperProtocol : class {}

extension HelperProtocol {
    
    func setUserDefaultValue(key: String, value: String) -> Void {
        UserDefaults.standard.setValue(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    func getUserDefaultValue(key: String, defaultValue: String) -> String {
        guard let result = UserDefaults.standard.string(forKey: key) else {
            return defaultValue
        }
        
        return result
    }

}
