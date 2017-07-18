//
//  Delegates.swift
//  Westeros
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 18/7/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit

final class Delegates {
    static func  housesDelegate ( model: [House]) -> ArrayTableViewDelegate<House>{
        
       // Creamos el objeto y la cluasura a ejecutar
       
        let del = ArrayTableViewDelegate(model: model, delegateMaker: {(house, IndexPath, UITableView) -> UIViewController in
          
                // Aqui hacemos un push de la pantalla
            
               let vc = HouseViewController(model: house)
            
               return vc
        })
        
        return del
        
    }
}
