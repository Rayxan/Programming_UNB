#include<bits/stdc++.h>
using namespace std;

int main(){
    string rna1,rna2;
    int flag=0;

    cin>>rna1>>rna2;

    //int tamanho = rna1.length();

    for(int i=0; i < rna1.length();i++){
        if(rna1[i] == rna2[i])
            flag++;
    }
    cout<<flag<<endl;


    return 0;
}