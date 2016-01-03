package com.crebma.primeFactors

object PrimeFactors {

  def factors(num: Int) : List[Int] = {
    var primes = List[Int]()
    var number = num
    for (candidate <- 2 to number) {
      while (number % candidate == 0) {
        primes = primes :+ candidate
        number /= candidate
      }
    }
    primes
  }

}
