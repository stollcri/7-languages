// fn prime_factors(num: i64) -> Vec<i64> {
//     vec![]
// }

// fn prime_factors(num: i64) -> Vec<i64> {
//     if num != 1 {
//     	vec![2]
//     } else {
//     	vec![]
//     }
// }

#[allow(dead_code)]
fn prime_factors(num: i64) -> Vec<i64> {
	let primes = vec![2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97];
	let mut results = vec![];

	let mut remainder = num;
	if num > 1 {
		for prime in primes {
			if remainder % prime == 0 {
				results.append(&mut vec![prime]);
				remainder = remainder / prime;
				results.append(&mut prime_factors(remainder));
				break
			}
		}
		// TODO: if you get here you have run past the end of the list or primes and will be in an infinte loop
    }

    results
}

// #[test]
// fn prime_factors_of_one() {
//     assert_eq!(prime_factors(1), []);
// }

// #[test]
// fn prime_factors_of_two() {
// 	assert_eq!(prime_factors(2), [2]);
// }

#[test]
fn prime_factors_test() {
	assert_eq!(prime_factors(1), []);
	assert_eq!(prime_factors(2), [2]);
	assert_eq!(prime_factors(3), [3]);
	assert_eq!(prime_factors(4), [2, 2]);
	assert_eq!(prime_factors(5), [5]);
	assert_eq!(prime_factors(6), [2, 3]);
	assert_eq!(prime_factors(7), [7]);
	assert_eq!(prime_factors(8), [2, 2, 2]);
	assert_eq!(prime_factors(9), [3, 3]);
	assert_eq!(prime_factors(16), [2, 2, 2, 2]);
	assert_eq!(prime_factors(25), [5, 5]);
}
