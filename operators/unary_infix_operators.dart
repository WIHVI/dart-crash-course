/* In Dart, unary infix operators are operators that consist of a single symbol 
and are placed between their operand and additional operand. These operators 
perform operations on a single operand and are part of Dart's syntax for 
expressing various computations. Unary infix operators are commonly used for 
arithmetic, logical, and bitwise operations. */

void main(List<String> args) {
  const age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20);
  print(age == 20);
  print(age != 20);
  print(age < 20);
  print(age <= 20);
  print(age > 20);
  print(age >= 20);

  // Bitwise operators
  print(age & 20);
  print(age | 20);
  print(age ^ 20);
}

// 1. Bitwise AND (&):
// - Compares bits at corresponding positions in two operands.
// - Returns 1 only if both bits are 1, otherwise 0.
/* 
int x = 10 (binary: 1010);
int y = 13 (binary: 1101);
int result = x & y; // result = 8 (binary: 1000) 
*/

// 2. Bitwise OR (|):
// - Compares bits at corresponding positions in two operands.
// - Returns 1 if at least one bit is 1, otherwise 0.
/* 
int x = 10 (binary: 1010);
int y = 13 (binary: 1101);
int result = x | y; // result = 15 (binary: 1111)
 */

// 3. Bitwise XOR (^):
// - Compares bits at corresponding positions in two operands.
// - Returns 1 if the bits are different, otherwise 0.
/* 
int x = 10 (binary: 1010);
int y = 13 (binary: 1101);
int result = x ^ y; // result = 5 (binary: 0111)
 */
