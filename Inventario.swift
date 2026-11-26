import Foundation

var inventario: [String: Int] = [:]

var opcion = 0

repeat {


    print("\n            MENU\n")
    print("1. Registrar un artículo")
    print("2. Ver lista de artículos")
    print("3. Consultar artículos en existencia")
    print("4. Salir\n")
    print("Selecciona una opción:")

    if let entrada = readLine(), let seleccion = Int(entrada) {

        opcion = seleccion

        switch opcion {

        case 1:
            print("\n--- REGISTRAR ARTÍCULOS ---")

            repeat {
                print("\nIngresa el nombre del producto:")
                let nombre = readLine() ?? ""

                if nombre.isEmpty {
                    print("El nombre no puede estar vacío.")
                    continue
                }

                print("Ingresa la cantidad:")
                
                if let cantidadTexto = readLine(),
                   let cantidad = Int(cantidadTexto),
                   cantidad >= 0 {

                    // Si el producto ya existe, suma la cantidad
                    if inventario[nombre] != nil {
                        inventario[nombre, default: 0] += cantidad
                    } else {
                        inventario[nombre] = cantidad
                    }

                    print("Producto registrado correctamente.")

                } else {
                    print("Cantidad inválida. Intenta nuevamente.")
                    continue
                }

                print("\n¿Deseas registrar otro producto? (s/n)")
                let respuesta = readLine()?.lowercased() ?? "n"

                if respuesta != "s" {
                    break
                }

            } while true

        case 2:
            print("\n--- LISTA DE ARTÍCULOS ---")

            if inventario.isEmpty {
                print("No hay productos registrados.")
            } else {
                for (nombre, cantidad) in inventario.sorted(by: {
                    $0.key < $1.key
                }) {
                    print("Producto: \(nombre) | Cantidad: \(cantidad)")
                }
            }

        case 3:
            print("\n--- ARTÍCULOS EN EXISTENCIA ---")

            let productosExistentes = inventario.filter {
                $0.value > 0
            }

            if productosExistentes.isEmpty {
                print("No hay artículos en existencia.")
            } else {
                for (nombre, cantidad) in productosExistentes.sorted(by: {
                    $0.key < $1.key
                }) {
                    print("Producto: \(nombre) | Existencias: \(cantidad)")
                }
            }

        case 4:
            print("\nSaliendo del sistema de inventario...")
            
        default:
            print("\nOpción no válida. Selecciona del 1 al 4.")
        }

    } else {
        print("\nEntrada incorrecta. Debes ingresar un número.")
    }

} while opcion != 4

