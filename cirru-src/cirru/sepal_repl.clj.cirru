
ns cirru.sepal-repl
  :gen-class
  :require
    [] cirru.sepal :refer $ [] transform-x
    [] cirru.parser-combinator :refer $ [] pare
    [] clojure.term.colors :refer :all
    [] aprint.core :refer $ [] aprint
    [] clojure.pprint :as pp

defn- eval-lines (lines)
  if (> (count lines) 0)
    let
        quoted-code $ transform-x (first lines)
        result $ try (eval quoted-code)
          catch Exception e
            println e
      print $ blue "|    <- "
      pp/write result
      println
      recur (rest lines)

defn- eval-print ()
  print $ blue "|sepal> "
  flush
  let
      code $ read-line
      details $ pare code
    if (:failed details)
      println details
      eval-lines (:value details)
    recur

defn -main (& args)
  println "|Starting REPL for Sepal.clj ..."
  flush
  eval-print
