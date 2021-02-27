#include<bits/stdc++.h>
using namespace std;
int main(){
    int j,i,n,num,fib[60],flag=0;
    fib[0] = 0;
    fib[1] = 1;
    for(i=2;i<10;i++){
        fib[i] = fib[i-1] + fib[i-2];
        //printf("%d\n",fib[i]);
    }
    scanf("%d",&n);
    for(j=0;j<n;j++){
        scanf("%d,&num");
        // printf("Fib[%d] = %d",j,fib[num]);
        // flag++;
        // printf("\n%d",flag);
    }
    return 0;
}