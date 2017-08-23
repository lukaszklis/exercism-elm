module Bob exposing (hey)

import Char


isEmpty : String -> Bool
isEmpty msg =
    String.isEmpty (String.trim msg)


hasUpperCaseLetters : String -> Bool
hasUpperCaseLetters msg =
    String.any Char.isUpper msg


isUpperCase : String -> Bool
isUpperCase msg =
    String.toUpper msg == msg


isShouting : String -> Bool
isShouting msg =
    hasUpperCaseLetters msg && isUpperCase msg


isQuestion : String -> Bool
isQuestion msg =
    String.endsWith "?" msg


hey : String -> String
hey msg =
    if isEmpty msg then
        "Fine. Be that way!"
    else if isShouting msg then
        "Whoa, chill out!"
    else if isQuestion msg then
        "Sure."
    else
        "Whatever."
