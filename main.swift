// Inicio del programa Aplicación número par o impar //

// Declaración de variable entera "a" que se utilizará para almacenar el residuo //
var a: Int = 0

// Solicita al usuario que ingrese su nombre //
print("Ingrese su nombre:")

// Lee la entrada del usuario y la guarda en la constante "nombre" si es válida//
if let nombre = readLine() {
    
    // Muestra un mensaje de bienvenida utilizando el nombre ingresado //
    print("Hola, \(nombre). Bienvenido al programa.")
    
    // Variable de control para repetir el ciclo mientras el usuario lo desee
    var continuar = true
    
    // Ciclo while que se ejecuta mientras "continuar" sea verdadero//
    while continuar {
        
        // Solicita al usuario ingresar un número//
        print("\nIngrese un número:")
        
        // Lee la entrada del usuario y la convierte a tipo Double (permite decimales)//
        if let input = readLine(), let numero = Double(input) {
            
            // Convierte el número decimal a entero (se eliminan los decimales)//
            let varNumero = Int(numero)
            
            // Calcula el residuo de dividir el número entre 2//
            a = varNumero % 2
            
            // Si el residuo es 0, el número es par//
            if a == 0 {
                print("El número \(numero) es par, \(nombre).")
            } else {
                // Si el residuo es distinto de 0, el número es impar//
                print("El número \(numero) es impar, \(nombre).")
            }
            
        } else {
            // Mensaje en caso de que el usuario ingrese un valor no válido//
            print("Entrada no válida, \(nombre).")
        }
        
        // Pregunta al usuario si desea ingresar otro número//
        print("\n¿Desea ingresar otro número? (si/no)")
        
        // Lee la respuesta del usuario y la convierte a minúsculas//
        if let respuesta = readLine()?.lowercased() {
            
            // Si el usuario escribe "no", se termina el ciclo//
            if respuesta == "no" {
                continuar = false
                print("Gracias por utilizar el programa, \(nombre).")
                print("Esperamos que haya sido de ayuda. ¡Hasta pronto!")
                
            // Si el usuario escribe "si", el ciclo continúa //
            } else if respuesta == "si" {
                continue
                
            } else {
                // Si la respuesta no es válida, el programa finaliza //
                print("Respuesta no válida. El programa finalizará.")
                print("Hasta luego, \(nombre). Gracias por su participación.")
                continuar = false
            }
        }
    }
    
} else {
    // Mensaje en caso de que no se haya ingresado un nombre válido//
    print("Nombre no válido.")
}

// Fin del programa//
