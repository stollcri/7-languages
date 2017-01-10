
CodeMash session: 7 Languages in 7 Hours

# Ruby

	docker run -it -v `pwd`/7-languages:/7-languages/ ruby bash
	cd 7-languages/
	cd ruby/
	bundle install
	rspec prime_factors_spec.rb

Completed the Kata, multiple ways, python-like language (except the end at the end of blocks)

# Clojur

	docker run -it -v `pwd`/7-languages:/7-languages/ clojure bash
	cd ..
	cd 7-languages/
	cd clojure/
	cd prime_factors/
	lein test

Did not complete the Kata -- very Lisp-like (or Objective-C) language, more obscure; lein is slow

# Haskell

	$ docker run -it -v `pwd`/7-languages:/7-languages/ haskell bash
	$ cd 7-languages/
	$ cd haskell/
	$ cabal update
	$ cabal install HUnit
	$ ghci PrimeFactors_Test.hs
	*PrimeFactors_Test> main
	# change source file
	*PrimeFactors_Test> :reload
	*PrimeFactors_Test> main

Completed the Kata, with help from the slides, i math-like language

# Rust

Statements need to end with a semicolon, if they do not return a value.

	docker run -it -v `pwd`/7-languages:/7-languages/ schickling/rust bash
	cd /
	cd 7-languages/
	cd rust
	cargo test

Completed the Kata, multiple ways, C-like language

# Scala

	docker run -it -v `pwd`/7-languages:/7-languages/ hseeberger/scala-sbt bash
	cd /
	cd 7-languages/
	cd scala/
	sbt test

Completed the examples, meh. Super slooowwwww.

# Elixir

Int vs float math, recursion only

	docker run -it -v `pwd`/7-languages:/7-languages/ elixir bash
    cd 7-languages/
    cd elixir/
    cd prime_factors/
    mix test

Completed the Kata, nice language

# Go

	docker run -it -v `pwd`/7-languages:/7-languages/ golang bash
    cd /
    cd 7-languages/
    cd go/
	go get github.com/onsi/ginkgo/ginkgo
	go get github.com/onsi/gomega
	export GOPATH=$GOPATH:/7-languages/go
	go test

Completed the Kata, nice language
