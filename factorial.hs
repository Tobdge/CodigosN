factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    putStrLn "Número:"
    input <- getLine
    let n = read input :: Integer
    putStrLn "Factorial::"
    print (factorial n)

{- ------------"README"------------
En windows se ejecuta instalando ghc
1. Ve a https://www.haskell.org/ghcup/
2. Descarga el instalador para Windows.
3. Ejecútalo y en el asistente marca instalar:
    GHC (el compilador)
    GHCi (intérprete interactivo)
4. Reinicia la terminal (PowerShell o CMD).
5. Verifica instalación con:
    ghc --version

6. para la compilar se pone en el CMD: 
    cd "C:\Users\TuUsuario\Desktop (o donde tienes tu archivo.hs)"
    ghc factorial.hs -o factorial.exe
7. para ejecución:
    .\factorial.exe
    y ya escribes el numero que vas a hacer factorial

-}