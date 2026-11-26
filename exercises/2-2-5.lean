def main : IO Unit := do
  let englishGreeting := IO.println "Hello!"
  IO.println "Bonjour!"
  englishGreeting

/-
main
==>
do
  let englishGreeting := IO.println "Hello!"
  IO.println "Bonjour!"
  englishGreeting
==>
do
  IO.println "Bonjour!"
  englishGreeting
==> "Bonjour!"
do
  englishGreeting
==>
IO.println "Hello!"
==> "Hello!"
-/
