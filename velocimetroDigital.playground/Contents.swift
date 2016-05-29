//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
    
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad()->(Actual : Int, velocidadEnCadena : String){
        var imprimeVelocidad = ""
        let actual = velocidad.rawValue
        
        switch velocidad{
            
        case .Apagado:
            velocidad = .VelocidadBaja
            imprimeVelocidad = "Apagado"
            
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            imprimeVelocidad = "Velocidad Baja"
            
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            imprimeVelocidad = "Velocidad Media"
            
        case .VelocidadAlta:
            velocidad = .Apagado
            imprimeVelocidad = "Velocidad Alta"
        }
        return (actual, imprimeVelocidad)
    }
}

var auto = Auto()
for i in 1...20 {
    var cambio = auto.cambioDeVelocidad()
    print("\(cambio.Actual) \(cambio.velocidadEnCadena)")
}
