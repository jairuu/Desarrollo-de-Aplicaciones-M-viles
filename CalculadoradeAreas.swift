
import Foundation

// Funcion para solicitar medidas
func solicitarMedida(_ mensaje: String) -> Double {
    while true {
        print(mensaje)

        if let entrada = readLine(),
           let valor = Double(entrada),
           valor > 0 {
            return valor
        } else {
            print("Error: Ingresa un numero valido mayor que cero.")
        }
    }
}

// Variable para controlar el menu
var continuar = true

// Menu principal
while continuar {

    
    print("\n     MENU DE AREAS\n")
    print("1. Area del cuadrado")
    print("2. Area del rectangulo")
    print("3. Area del triangulo")
    print("4. Area del circulo")
    print("5. Salir\n")
    print("Selecciona una opcion:")

    let opcion = readLine() ?? ""

    switch opcion {

    case "1":
        print("\n--- AREA DEL CUADRADO ---")

        let lado = solicitarMedida("Ingresa la medida del lado:")
        let area = lado * lado

        print("El area del cuadrado es: \(String(format: "%.2f", area))")

    case "2":
        print("\n--- AREA DEL RECTANGULO ---")

        let base = solicitarMedida("Ingresa la base:")
        let altura = solicitarMedida("Ingresa la altura:")
        let area = base * altura

        print("El area del rectangulo es: \(String(format: "%.2f", area))")

    case "3":
        print("\n--- AREA DEL TRIANGULO ---")

        let base = solicitarMedida("Ingresa la base:")
        let altura = solicitarMedida("Ingresa la altura:")
        let area = (base * altura) / 2

        print("El area del triangulo es: \(String(format: "%.2f", area))")

    case "4":
        print("\n--- AREA DEL CIRCULO ---")

        let radio = solicitarMedida("Ingresa el radio:")
        let area = Double.pi * pow(radio, 2)

        print("El area del circulo es: \(String(format: "%.2f", area))")

    case "5":
        print("\nSaliendo de la aplicacion...")
        print("Gracias por utilizar la calculadora.")
        continuar = false

    default:
        print("\nOpcion no valida. Selecciona una opcion del 1 al 5.")
    }
}
