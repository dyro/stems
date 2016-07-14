# Stems

### Global Dependencies

*  `Java 8`
*  `rlwrap` - `$ brew install rlwrap` (for repl input)

### Commands

```bash
$ ./scripts/run.sh deps
```
Installs dependencies found in `DEPS` file in root directory. `DEPS`, by default, includes `react`, `react-dom`, and, `ClojureScript`
***
```
$ ./scripts/run.sh clear-out
```
Removes the output (`out`) directory
***
```
$ ./scripts/run.sh build
```
compiles `src` directory to `out` directory
***
```
$ ./scripts/run.sh watch
```
Watches the `src` directory and compiles its contents after a change is observered
***
```
$ ./scripts/run.sh repl
```
Opens a `REPL` with the browser. Make sure to uncomment https://github.com/dyro/stems/blob/master/src/stems/core.cljs#L10
***
```
$ ./scripts/run.sh release
```
Minifies JavaScript output and eliminates deadcode using google closure compiler


