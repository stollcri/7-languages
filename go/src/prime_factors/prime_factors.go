package prime_factors

// func Factors(num int) []int {
//   return []int{}
// }


// func Factors(num int) []int {
//   if num > 1 {
//   	return []int{2}
//   } else {
//   	return []int{}
//   }
// }


func Factors(num int) []int {
	var primes = []int{2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97}
	var results = []int{}
	var remainder = num
	for remainder > 1 {
		for _, prime := range primes {
			if remainder % prime == 0 {
				results = append(results, prime)
				remainder = remainder / prime
			}
		}
	}
	return results
}
