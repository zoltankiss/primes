# complexity of `Primes.first_n_primes`

The "[Prime number theorem](http://en.wikipedia.org/wiki/Prime-counting_function)"
states that there are approximately `n / ln(n)` primes less than n, for positive integers n.
Therefore if the function f(n) is defined so that its inverse, call it f_inverse(n) is defined
as f_inverse(n/ln(n)), then for positive integers n, the nth prime is going to be roughly f(n).
This means that the complexity of `Primes.first_n_primes` is `((n * n) * f(n) / ln(n))`.
