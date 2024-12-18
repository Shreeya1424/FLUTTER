import 'dart:math';

bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> findPrimesInRange(int start, int end) {
  List<int> primes = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}

void main() {
  int start = 10;
  int end = 20;
  List<int> primes = findPrimesInRange(start, end);
  print('Prime numbers between \$start and \$end: \$primes');
}
