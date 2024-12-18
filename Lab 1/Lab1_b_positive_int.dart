void main() {
  int n1 = 6;
  int n2 = 14;

  print('Is $n1 an ugly number? ${isUgly(n1)}'); // Output: true
  print('Is $n2 an ugly number? ${isUgly(n2)}'); // Output: false
}

bool isUgly(int n) {
  if (n <= 0) return false;
  for (int factor in [2, 3, 5]) {
    while (n % factor == 0) {
      n ~/= factor;
    }
  }

  return n == 1;
}
