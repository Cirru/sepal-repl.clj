(defproject cirru/sepal-repl "0.0.1"
  :description "Simple REPL for Sepal.clj"
  :url "https://github.com/Cirru/sepal-repl.clj"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.7.0"]
                 [cirru/sepal "0.0.6"]
                 [cirru/parser-combinator "0.0.1"]
                 [clojure-term-colors "0.1.0-SNAPSHOT"]
                 [aprint "0.1.3"]]
  :main ^:skip-aot cirru.sepal-repl
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}}
  :plugins [[cirru/lein-sepal "0.0.11"]]
  :cirru-sepal {:paths ["cirru-src"]})
