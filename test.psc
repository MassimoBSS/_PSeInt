Algoritmo SistemaInventarioVentas
    Definir opcion, i, n, codigoBuscar, cantidadVenta Como Entero
    Definir totalVenta, ingresosTotales Como Real
    Definir continuar Como Caracter
    
    n <- 5
    Dimension codigos[5]
    Dimension nombres[5]
    Dimension precios[5]
    Dimension stock[5]
    
    codigos[1] <- 101; nombres[1] <- "Arroz 1kg"; precios[1] <- 1500.0; stock[1] <- 20
    codigos[2] <- 102; nombres[2] <- "Fideos 500g"; precios[2] <- 900.0; stock[2] <- 15
    codigos[3] <- 103; nombres[3] <- "Aceite 1.5lt"; precios[3] <- 3200.0; stock[3] <- 10
    codigos[4] <- 104; nombres[4] <- "Leche 1lt"; precios[4] <- 1200.0; stock[4] <- 25
    codigos[5] <- 105; nombres[5] <- "Yerba 1kg"; precios[5] <- 4500.0; stock[5] <- 18
    
    ingresosTotales <- 0.0
    continuar <- "s"
    
    Repetir
        Limpiar Pantalla
        Escribir "=================================="
        Escribir "   SISTEMA DE VENTAS E INVENTARIO "
        Escribir "=================================="
        Escribir "1. Mostrar inventario"
        Escribir "2. Registrar una venta"
        Escribir "3. Ver ingresos totales"
        Escribir "4. Salir"
        Escribir "Seleccione una opción (1-4): "
        Leer opcion
        
        Segun opcion Hacer
            1:
                Escribir "--- LISTADO DE PRODUCTOS ---"
                Escribir "Cod | Producto      | Precio   | Stock"
                Para i <- 1 Hasta n Hacer
                    Escribir codigos[i], " | ", nombres[i], " | $", precios[i], " | ", stock[i]
                FinPara
                Escribir "Presione una tecla para continuar..."
                Esperar Tecla
            2:
                Escribir "--- REGISTRAR VENTA ---"
                Escribir "Ingrese el código del producto: "
                Leer codigoBuscar
                
                encontrado <- Falso
                Para i <- 1 Hasta n Hacer
                    Si codigos[i] = codigoBuscar Entonces
                        encontrado <- Verdadero
                        Escribir "Producto: ", nombres[i]
                        Escribir "Precio unitario: $", precios[i]
                        Escribir "Stock disponible: ", stock[i]
                        Escribir "Ingrese cantidad a llevar: "
                        Leer cantidadVenta
                        
                        Si cantidadVenta <= stock[i] Entonces
                            stock[i] <- stock[i] - cantidadVenta
                            totalVenta <- cantidadVenta * precios[i]
                            ingresosTotales <- ingresosTotales + totalVenta
                            Escribir "Venta exitosa. Total a pagar: $", totalVenta
                        Sino
                            Escribir "Stock insuficiente."
                        FinSi
                    FinSi
                FinPara
                
                Si No encontrado Entonces
                    Escribir "Código de producto no encontrado."
                FinSi
                
                Escribir "Presione una tecla para continuar..."
                Esperar Tecla
            3:
                Escribir "--- BALANCE ---"
                Escribir "Ingresos totales acumulados: $", ingresosTotales
                Escribir "Presione una tecla para continuar..."
                Esperar Tecla
            4:
                Escribir "Saliendo del sistema..."
                continuar <- "n"
            De Otro Modo:
                Escribir "Opción no válida."
                Esperar Tecla
        FinSegun
    Hasta Que continuar = "n"
FinAlgoritmo
