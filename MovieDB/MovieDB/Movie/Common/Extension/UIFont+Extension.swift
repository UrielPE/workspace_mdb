//
//  UIFont+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation
import UIKit

extension UIFont
{
    public static func radioCanadaLight( size arg : CGFloat ) -> UIFont? {
        UIFont(name: "RadioCanada-Light", size: arg)
    }
    
    public static func radioCanadaMedium( size arg : CGFloat ) -> UIFont? {
        UIFont(name: "RadioCanada-Medium", size: arg)
    }
    
    public static func radioCanadaRegular( size arg : CGFloat ) -> UIFont? {
        UIFont(name: "RadioCanada-Regular", size: arg)
    }
    
    public static func radioCanadaSemiBold( size arg : CGFloat ) -> UIFont? {
        UIFont(name: "RadioCanada-SemiBold", size: arg)
    }
    
    public static func radioCanadaBold( size arg : CGFloat ) -> UIFont? {
        UIFont(name: "RadioCanada-Bold", size: arg)
    }
}
