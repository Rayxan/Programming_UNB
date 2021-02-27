#include<bits/stdc++.h>
using namespace std;
int main(){
    int a,b,result;
        cin>>a>>b;
        string a2 = to_string(a);
        string b2 = to_string(b);

        if(a2[0] != 0 || b2[0] != 0){
        //(1 ≤ a, b < 10500)
        //if((a>0 && b>0) && (a<pow(10,500) && b<pow(10,500))){
            result = a+b;
            printf("%d",result);
        //}
        }else
            printf("jojo");
    return 0;
}