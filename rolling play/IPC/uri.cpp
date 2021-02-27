#include<bits/stdc++.h>
using namespace std;

int main(){
    double a,soma=0;
    int flag=0;

    while(a>0){
        cin>>a;
        soma += a;
        if(a>0)
            flag++;
    }

    cout<<soma/flag;

    return 0;
}