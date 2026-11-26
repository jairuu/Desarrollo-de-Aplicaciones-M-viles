
import Foundation

print("APLICACIÓN PAR O IMPAR")

print("Ingresa un número entero:")

if let entrada = readLine(), let numero = Int(entrada) {

    if numero % 2 == 0 {
        print("El número \(numero) es PAR.")
    } else {
        print("El número \(numero) es IMPAR.")
    }

} else {
    print("Error: Debes ingresar un número entero válido.")
}
