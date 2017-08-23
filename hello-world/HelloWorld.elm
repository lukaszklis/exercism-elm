module HelloWorld exposing (..)

helloWorld : Maybe String -> String
helloWorld name =
    let
        greeting =
            Maybe.withDefault "World" name
    in
        "Hello, " ++ greeting ++ "!"
