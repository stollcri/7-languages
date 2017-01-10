(ns prime-factors.core-test
  (:require [clojure.test :refer :all]
            [prime-factors.core :refer :all]))

(deftest prime-factors
  (is (= (primes 1) [1]))
  (is (= (primes 2) [2]))
  ; (is (= (primes 3) [3]))
  ; (is (= (primes 4) [2, 2]))
  ; (is (= (primes 5) [5]))
  ; (is (= (primes 6) [2, 3]))
  ; (is (= (primes 7) [7]))
  ; (is (= (primes 8) [2, 2, 2]))
  ; (is (= (primes 9) [3, 3]))
  ; (is (= (primes 10) [2, 5]))
  ; (is (= (primes 11) [11]))
  ; (is (= (primes 12) [2, 2, 3]))
  ; (is (= (primes 13) [13]))
  ; (is (= (primes 14) [2, 7]))
  ; (is (= (primes 15) [3, 5]))
  ; (is (= (primes 16) [2, 2, 2, 2]))
  ; (is (= (primes 25) [5, 5]))
  ; (is (= (primes 49) [7, 7]))
)
