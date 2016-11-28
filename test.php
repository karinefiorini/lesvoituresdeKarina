<?php
$a_bool = TRUE;   // un booléen
$a_str  = "foo";  // une chaîne de caractères
$a_str2 = 'foo';  // une chaîne de caractères
$an_int = 12;     // un entier

echo gettype($a_bool); // affiche :  boolean
echo gettype($a_str);  // affiche :  string

// Si c'est un entier, incrément de 4
if (is_int($an_int)) {
    $an_int += 4;
}

// Si $a_bool est une chaîne de caractères, on l'affiche
if (is_string($a_bool)) {
    echo "String: $a_bool";
}
?>