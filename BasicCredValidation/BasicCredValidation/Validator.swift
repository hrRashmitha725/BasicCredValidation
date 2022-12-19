//
//  Validator.swift
//  BasicCredValidation
//
//  Created by Softsuave on 05/12/2022.
//

import Foundation

public struct Validator {
     
    static let shared:Validator = Validator()
    
    static func emailValidation(email: String) -> (isEmpty: Bool, isInvalid: Bool) {
        let isEmpty = (email.isEmpty || email.trimmingCharacters(in: .whitespaces).count <= 0)
        let isValidEmail = !Validator.shared.validateEmail(email: email)
        return (isEmpty: isEmpty, isInvalid: isValidEmail)
    }
    
    func validateEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    //Normal password validation which is not empty and conains minimum 6 charactors
    static func normalPasswordValidation(password: String) -> (isEmpty: Bool, isInvalid: Bool) {
        let isEmpty = (password.isEmpty || password.trimmingCharacters(in: .whitespaces).count <= 0)
        let isValidPassword = (password.trimmingCharacters(in: .whitespaces).count >= 6)
        return (isEmpty: isEmpty, isInvalid: isValidPassword)
    }
    
    //Password contains one big letter, one number and and is minimum eight char long.
    static func strongPasswordValidation(password: String) -> (isEmpty: Bool, isInvalid: Bool){
        let isEmpty = (password.isEmpty || password.trimmingCharacters(in: .whitespaces).count <= 0)
        let isValidPassword = !Validator.shared.validatePassword(password: password)
        return (isEmpty: isEmpty, isInvalid: isValidPassword)
        
    }
    
    func validatePassword(password: String) -> Bool {
        let passwordRegex = "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,}$"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
}
