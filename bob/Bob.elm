module Bob exposing (hey)

import Regex


isEmpty : String -> Bool
isEmpty msg =
    String.isEmpty (String.trim msg)


hasLetters : String -> Bool
hasLetters msg =
    Regex.contains (Regex.regex "[a-zA-Z]") msg


isShouting : String -> Bool
isShouting msg =
    hasLetters msg && String.toUpper msg == msg


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
