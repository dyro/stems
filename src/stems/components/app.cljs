(ns stems.components.app
  (:require [cljsjs.react]))

(defn- render []
  (.createElement js/React "h1"
                           nil
                           "hello, world"))

(def App (.createClass js/React
                       #js {:render render}))
