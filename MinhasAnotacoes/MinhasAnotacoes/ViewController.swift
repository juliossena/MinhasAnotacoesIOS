//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Tribanco Dev on 01/08/2018.
//  Copyright © 2018 minhasAnotacoes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let chave :String = "MinhasAnotacoes"
    
    @IBOutlet weak var texto: UITextView!
    @IBAction func salvarDados(_ sender: Any) {
        let texto :String = self.texto.text
        UserDefaults.standard.set(texto, forKey: chave)
        
        
    }
    
    func carregarDados () -> String{
        if let texto :String = UserDefaults.standard.string(forKey: chave) {
            return texto
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.texto.text = carregarDados()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

