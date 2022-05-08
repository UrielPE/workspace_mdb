//
//  MovieLoginView_TextField+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation
import UIKit

extension MovieLoginView    :   UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        if let nextTextField = self.viewWithTag(textField.tag + 1) as? UITextField {
            nextTextField.becomeFirstResponder()
        }
        
        else {
            textField.resignFirstResponder()
        }
        
        return false
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        self.lbErrorMessage.text    =   ""
        
        return true
    }
}
