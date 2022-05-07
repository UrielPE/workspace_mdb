//
//  UIImageView+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation
import UIKit

extension UIImageView  {
    public  func imageFromServerUrl( urlString: String, placeholderImage: UIImage )
    {
        if self.image   ==  nil{
            self.image  =   placeholderImage
        }
        
        URLSession.shared.dataTask(with: URL(string: urlString)!) { (data, response, error) in
            if error != nil{
                return
            }
            
            DispatchQueue.main.async {
                guard let data  =   data else{return}
                let image   =   UIImage(data: data)
                self.image  =   image
            }
        }.resume()
    }
}
