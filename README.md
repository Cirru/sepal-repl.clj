
# sepal-repl

Simple REPL for Sepal.clj

## Installation

```bash
git clone git@github.com:Cirru/sepal-repl.clj.git
mkdir -p src/cirru/
lein cirru-sepal # to generate Clojure code
```

## Usage

uberjar is currently not available due to this issue:
https://github.com/trhura/clojure-term-colors/issues/2

```text
➤➤ rlwrap lein run
Starting REPL for Sepal.clj ...
sepal> defn f1 (x y) (+ x y $ * x y)
    -> (defn f1 [x y] (+ x y (* x y)))
    <- #'user/f1
sepal> + 1 2 3
    -> (+ 1 2 3)
    <- 6
sepal> str |hello "| " |world!
    -> (str "hello" " " "world!")
    <- "hello world!"
sepal> [] 1 2 3 4 $ [] 5 6
    -> [1 2 3 4 [5 6]]
    <- [1 2 3 4 [5 6]]
sepal> {} (:a 1) (:b 2)
    -> {:b 2, :a 1}
    <- {:b 2, :a 1}
sepal> case 1 (1 |one) (2 |two) |else
    -> (case 1 1 "one" 2 "two" "else")
    <- "one"
sepal> case 3 (1 |one) (2 |two) |else
    -> (case 3 1 "one" 2 "two" "else")
    <- "else"
```

![text with colors](https://pbs.twimg.com/media/CUUkNuSUsAA4-kd.png)

### Bug

* unexpected behavior at "Command d"

## License

Copyright © 2015 jiyinyiyong

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
