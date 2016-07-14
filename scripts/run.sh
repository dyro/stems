#!/bin/bash

TASK=$1
COMMAND='java -cp "lib/cljs.jar:lib/*:/src" clojure.main'
DEPS="../DEPS"

function install-deps {
  remove-deps

  cd lib

  while read -r link
  do
    eval "curl -OL $link"
  done < $DEPS

  cd -
}

function remove-deps {
  rm -rf lib/
  mkdir lib
}

function remove-output {
  rm -rf out/
  mkdir out
}

if   [ "$TASK" = "build" ]; then
  eval "$COMMAND scripts/build.clj"

elif [ "$TASK" = "watch" ]; then
  eval "$COMMAND scripts/watch.clj"

elif [ "$TASK" = "repl" ]; then
  eval "rlwrap $COMMAND scripts/repl.clj"

elif [ "$TASK" = "release" ]; then
  eval "$COMMAND scripts/release.clj"

elif [ "$TASK" = "deps" ]; then
  install-deps

elif [ "$TASK" = "clear-out"]; then
  remove-output

else
  echo "No task registered with the name $TASK"
fi
