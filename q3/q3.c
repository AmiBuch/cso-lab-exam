#include <stdio.h>
void modaray(long long int N, long long int* arr);
int main () {
    long long int N;
    scanf("%lld", &N);
    long long int arr[N];
    modarray(N, arr);
    for (int i = 0; i < N; i++) {
        printf("%lld ", arr[i]);
    }
    return 0;
}