(require 'cljs.build.api)

(cljs.build.api/build "src"
                      {:main      'stems.core
                       :output-to "out/main.js"})
