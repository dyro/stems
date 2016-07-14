(ns stems.core
  (:require [cljsjs.react]
            [cljsjs.react.dom]
            [stems.components.app :as app]))

;; (enable-console-print!)

;; uncomment when you want to use the repl
;;
;;(defonce conn
;;  (repl/connect "http://localhost:9000/repl"))

(defonce element (.getElementById js/document "container"))

(js/ReactDOM.render (.createElement js/React app/App #js{} nil)
                    element)
