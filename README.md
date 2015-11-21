
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
sepal> println "|hello world!"
hello world!
    <- nil
sepal> + 1 2 3
    <- 6
sepal> [] 1 2 3
    <- [1 2 3]
sepal> [] 1 2 |string
    <- [1 2 "string"]
sepal> {} (:a "|thing of a") (:b |of-b)
    <- {:b "of-b", :a "thing of a"}
sepal> defn add (a b) $ + a b
    <- #<Var@478ee483: #object[user$add 0x1bb564e2 "user$add@1bb564e2"]>
sepal> add 1 $ + 2 3
    <- 6
sepal>
```

### Bug

* unexpected behavior at "Command d"

## License

Copyright © 2015 jiyinyiyong

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
