
# Notes on Haskell

## Beginner Stuff

| imperative | fp |
| ---------- | -- |
| program is list of instructions | ... a set of expr/funcs |
| ... executed in order | ... evaluated as needed |
| ... you figure out sequence | ... you figure out types |
| ... vars are memory locations/object pointers | ... vars are expr names |
| program execution is going through list of instructions | ... is reducing expressions until done |

* this is sorta why fp is immutable; that's not a primary feature, it's just that you can't define names more than once in a set of expressions. Doesn't make sense to the compiler - which one do I do first
    * e.g. ```x = 5 ; x = x + 1```  - an invalid declaration. Like ```5 = 5 + 1```
    * e.g. the 'x' is a memory location;  vs. fp x is a name

* again:  imperative:  x = 5, store in memory;  fun inc(y) {y+1}, define a func
* fp:  x = 5, assign expr to name;  inc y = y + 1, assign expr to name
    * no difference in syntax - it's all just making names!

## Beginner complaints
* i know how to write functions! in fp, there's an infinite ladder of category theoretic type species !!
* to learn fp, you need to get comfortable thinking about types/categories of things
    * e.g. this function is a monoid, e.g. it has associative properties.
* Oh, it's not well stated, but not only operator overloading but really inventing random operators (as far as I can see). What's &= or =<< ?

# Programming

## Conventions

* "tick" ' can be part of var name;  often used as an example/version of the func  x = ,  x' =
* You can use "infix" operators as normal
    ```
    4 + 9 == 13   -- true
    (==) ( (+) 4 9 ) 13
    ```
* You can create new operators
* List - [1,2] - all same types
* regarding ":" (cons) -  ```[1,2,3,4,5]``` is exactly equivalent to ```1:2:3:4:5:[]```
    * and "hello" ... ['h','e','l','l','o'] ... 'h':'e':'l':'l':'o':[]
* Tuple - ('h',1) - diff types

## Functions

* where - to give yourself some room to work (like {})
* guards - "| expr = func-expr"
* pattern matching over vars

## ghci
You're in a monad (or something).

You need to:
* preface funcs with let

## Doc links
https://en.wikibooks.org/wiki/Haskell/

## command args

gotta be kidding. reading on how to do this, no really standard way, and still
have to do Phd research to figure out difference between monads, functors, etc

OK. CmdArgs - seems simplest.

Just use the module.... not found....

$ cabal install CmdArgs - may need to run cabal update
!!

$ cabal update
Downloading latest package list ...........
$ cabal install CmdArgs
.....
$

* https://spin.atomicobject.com/2012/12/13/using-haskells-cmdargs-package/
* https://github.com/ndmitchell/cmdargs#readme
* http://hackage.haskell.org/package/cmdargs-0.10.17/docs/System-Console-CmdArgs-Implicit.html
