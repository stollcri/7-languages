(ns prime-factors.core)

(defn primes-0
  ([num] []))

(defn primes-1
	([num]
		(cond
			(< num 2) []
			:else [2]
		)
	)
)

(defn primes-2
	([num]
		(case num
			2 [2]
			3 [3]
			4 [2, 2]
			5 [5]
			6 [2, 3]
			7 [7]
			8 [2, 2, 2]
			9 [3, 3]
			10 [2, 5]
			11 [11]
			12 [2, 2, 3]
			13 [13]
			14 [2, 7]
			15 [3, 5]
			16 [2, 2, 2, 2]
			25 [5, 5]
			49 [7, 7]
			[]
		)
	)
)

(defn primes
	([num]
		(def remainder num)
		(cons 1
			(while (< 1 remainder)
				(cond
					(zero? (mod remainder 2))
						2
						(remainder (/ remainder 2))
					(zero? (mod remainder 3))
						3
						(remainder (/ remainder 3))
				)
			)
		)
	)
)
