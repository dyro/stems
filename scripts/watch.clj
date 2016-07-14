(require 'cljs.build.api)

(cljs.build.api/watch "src"
                      {:main      'stems.core
                       :output-to "out/main.js"})
