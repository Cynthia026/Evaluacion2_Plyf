type Nodo = Int -- Definición de un nodo de tipo entero
type Grafo = [(Nodo, [Nodo])] -- define un grafo como una lista de ayacencia

grafo1 :: Grafo
grafo1 = [(1, [2, 3]), (2, [1, 4, 5]), (3, [1, 5]), (4, [2, 5]), (5, [2, 3, 4])] -- define un grafo

-- Función principal del programa
main :: IO()
main = do
    putStrLn "Esta es la lista de Ayacencia del grafo:" -- Mensaje inicial 
    recorrido grafo1 -- Llamamos a la función 'imprimirLista' para recorrer e imprimir el grafo
  where
    recorrido [] = return () -- Función auxiliar para imprimir cada nodo y su lista de vecinos
    -- Caso base: si la lista está vacía, terminamos (no hay nada más que imprimir)
    recorrido ((nodo, vecinos):resto) = do 
        putStrLn $ show nodo ++ " -> " ++ show vecinos -- Imprimimos el nodo y su lista de vecinos en formato "nodo -> [vecinos]"
        recorrido resto -- Llamamos recursivamente a 'imprimirLista' para procesar el resto del grafo