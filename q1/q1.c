/*

Problem 1: Given two numbers(N and M) perform basic arithmetic operations, i.e. add, subtract,
divide, exponentiation, modulus- using switch case(S) or if-else.
Input/Output Format
• Input: M N S
• Output: Result of chosen operation in integer format
• Switch case: ’1’ for addition(M+N), ’2’ for subtract(M-N), ’3’ for divide(M/N), ’4’ for exponentiation(MN ),
and ’5’ for modulus(M%N)


 */
#include <stdio.h>
long long int operations(long long int op1, long long int op2);
int main () {
    long long int op1, op2, operator;
    scanf("%lld %lld %lld", &op1, &op2, &operator);
    
}