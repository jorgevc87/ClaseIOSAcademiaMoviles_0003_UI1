//
//  ViewController.swift
//  Ejemplo_UI1
//
//  Created by MacBooK Pro on 8/6/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miSegment: UISegmentedControl!
    
    @IBOutlet weak var contenedorImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cambiandoCiudad(_ sender: Any) {
        print("Dio touch en miSegment, index = \(miSegment.selectedSegmentIndex)")
        
        switch miSegment.selectedSegmentIndex {
        case 0:
            print("Seleccionó Lima")
            //showAlert(departamento: "Lima")
            showImage(imagen: UIImage(named : "lima")!)
        case 1:
            print("Seleccionó Cuzco")
            //showAlert(departamento: "Cuzco")
            showImage(imagen: UIImage(named : "cusco")!)
        case 2:
            print("Seleccionó Arequipa")
            //showAlert(departamento: "Arequipa")
            showImage(imagen: UIImage(named : "arequipa")!)
            
        default: return
        }
    }
    
    private func showAlert(departamento : String){
        //CREANDO UN OBJETO ALERT
        let objAlert =  UIAlertController(title: "\(departamento)", message: "Seleccionaste \(departamento)", preferredStyle: .alert)
        
        //AGREGANDO UN BOTON AL ALERT (ACTION)
        let btnContinuar = UIAlertAction(title: "Continuar", style: .default, handler: nil)
        
        objAlert.addAction(btnContinuar)
        
        self.present(objAlert, animated: true, completion: nil)
    }
    
    private func showImage(imagen : UIImage){
        contenedorImage.image = imagen
    }
}

