module Main exposing (..)

import Html exposing (Html, text)


main : Html msg
main =
    text "Hello, Elm!"


add : Int -> Int -> Int
add a b =
    if b == 0
    a
    else
    add (a+1) (b-1)


multiply : Int -> Int -> Int
multiply a b =
    if b == 0 then
        0
    else
        add a (multiply a (b - 1))


-- Ejercicio 1: Función Potencia
power : Int -> Int -> Int
power a b =
    if b == 0 then
        a
    else 
        multiply a (power (a) (b-1))


-- Ejercicio 2: Factorial
factorial : Int -> Int
factorial n =
    if n == 1 then
        n
    else
        multiply (n) (factorial (n - 1))



-- Ejercicio 3: Fibonacci
fibonacciExponential : Int -> Int
fibonacciExponential n =
    if n == 0 then
        0
    else if n == 1 then
        1
    else
    add(fibonacciExponential(n-1) fibonacciExponential(n-2)) 

{-

fibonacciLinear (5)

n acc1 acc 2
5   0   1

4   1   1

3   1   2

2   2   3

1   5   3

0   7   5

-}


fibonacciLinear : Int -> Int
fibonacciLinear n =
    fibonacciHelper n 0 1

fibonacciHelper : Int -> Int -> Int -> Int
fibonacciHelper n acc1 acc2 =
    if n == 0 then
        acc1
    else 
        fibonacciHelper n-1 acc2 add(acc1 acc2)


-- Ejercicio 4: Triángulo de Pascal
pascalTriangle : Int -> Int -> Int
pascalTriangle x y =
    -- TODO: Implementar triángulo de Pascal
    0


-- Ejercicio 5: Máximo Común Divisor (MCD)
gcd : Int -> Int -> Int
gcd a b =
    -- TODO: Implementar algoritmo euclidiano
    0


-- Ejercicio 6: Contar Dígitos
countDigits : Int -> Int
countDigits n =
    -- TODO: Implementar contador de dígitos
    0


-- Ejercicio 7: Suma de Dígitos
sumDigits : Int -> Int
sumDigits n =
    -- TODO: Implementar suma de dígitos
    0


-- Ejercicio 8: Verificar Palíndromo
isPalindrome : Int -> Bool
isPalindrome n =
    -- TODO: Implementar verificador de palíndromo
    False


reverseNumber : Int -> Int
reverseNumber n =
    -- TODO: Implementar función para invertir número
    0


reverseHelper : Int -> Int -> Int
reverseHelper n acc =
    -- TODO: Función auxiliar para invertir número
    0


-- Ejercicio 9: Paréntesis Balanceados
isBalanced : String -> Bool
isBalanced str =
    -- TODO: Implementar verificador de paréntesis balanceados
    False


isBalancedHelper : List Char -> Int -> Bool
isBalancedHelper chars counter =
    -- TODO: Función auxiliar para verificar paréntesis balanceados
    False