for $b in doc("bookstore.xml")//book
let $c := $b /author
return  <libro> {$b /title, <autores>{count($c)}</autores>} </libro>