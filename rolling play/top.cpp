//consecutivos
#include<bits/stdc++.h>
using namespace std;
int main(){
    int i,n,num=0,same,flag=0;
    scanf("%d",&n);
    for(i=0;i<n;i++){
        same = num;
        scanf("%d",&num);
        
        if(same == num)
            flag++;
        }
    printf("%d",flag);
    return 0;
}