package com.crebma.primeFactors

object PrimeFactors {

  // def factors(num: Int) : List[Int] = {
  //   List[Int]()
  // }


  // def factors(num: Int) : List[Int] = {
  // 	if (num == 1) {
  // 		List[Int]()
  // 	} else {
  // 		List[Int](num)
  // 	}
  // }


  // def factors(num: Int) : List[Int] = {
  // 	if (num == 1) {
  // 		List[Int]()
  // 	} else {
  // 		if (num %2 == 0 && num > 2) {
  // 			List[Int](2, 2)
  // 		} else {
  // 			List[Int](num)
  // 		}
  // 	}
  // }


  // def factors(num: Int) : List[Int] = {
  // 	var primes = List[Int]()
  // 	var number = num
  // 	if (number != 1) {
  // 		while (number % 2 == 0 && number > 2) {
  // 			primes = primes :+ 2
  // 			number /= 2
  // 		}

  // 		while (number % 3 == 0 && number > 3) {
  // 			primes = primes :+ 3
  // 			number /= 3
  // 		}

  // 		if (number != 1) {
  // 			primes = primes :+ number
  // 		}
  // 	}
  // 	primes
  // }


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
