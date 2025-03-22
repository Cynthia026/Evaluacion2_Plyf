-- Ejercicio 2: Operaciones sobre una lista de 10 elementos

-- Definición de una lista de números
listaNumeros :: [Int] -- define una lista de números enteros
listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] -- define una lista de 10 números enteros

-- Concatenación de dos listas
duplicarLista :: [Int] -> [Int] -- define una funcion que toma como argumento una lista de números enteros y devuelve otra lista de números enteros
duplicarLista xs = xs ++ xs -- la funcion duplica la lista de entrada concatenandola consigo misma

-- Obtener el primer y último elemento
primerElemento :: [Int] -> Int -- define una funcion que toma como argumento una lista de números enteros y devuelve un entero
primerElemento xs = head xs -- la funcion devuelve el primer elemento de la lista de entrada

ultimoElemento :: [Int] -> Int -- define una funcion que toma como argumento una lista de números enteros y devuelve un entero
ultimoElemento xs = last xs -- la funcion devuelve el último elemento de la lista de entrada

-- Filtrado de números pares
numerosPares :: [Int] -> [Int] -- define una funcion que toma como argumento una lista de números enteros y devuelve otra lista de números enteros
numerosPares xs = filter even xs -- utiliza filter para obtener los números pares de la lista de entrada

-- Elevar cada número al cuadrado
numerosCuadrados :: [Int] -> [Int] -- define una funcion que toma como argumento una lista de números enteros y devuelve otra lista de números
numerosCuadrados xs = map (^ 2) xs -- la funcion utiliza map para elevar cada número de la lista de entrada al cuadrado

-- Función principal para mostrar resultados
main :: IO ()
main = do
    let listaduplicada = duplicarLista listaNumeros -- crea una lista duplicada de la lista original
    putStrLn "Concatenación de listas:" -- imprime un mensaje
    print listaduplicada -- imprime la lista duplicada
    putStrLn "\nPrimer elemento:" -- imprime un mensaje
    print (primerElemento listaNumeros) -- imprime el primer elemento de la lista original
    putStrLn "\nÚltimo elemento:" -- imprime un mensaje
    print (ultimoElemento listaNumeros) -- imprime el último elemento de la lista original
    putStrLn "\nNúmeros pares:" -- imprime un mensaje
    print (numerosPares listaNumeros) -- imprime los números pares de la lista original
    putStrLn "\nNúmeros elevados al cuadrado:" -- imprime un mensaje
    print (numerosCuadrados listaNumeros) -- imprime los números elevados al cuadrado de la lista original