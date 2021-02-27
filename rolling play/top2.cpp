#include<iostream>
using namespace std;
void bubbleSort(int v[], int n){
    int i, j, ok = 0;
    // passo 3
    for(j = 0; j < n && ok == 0; j++){
        // passo 2
        ok = 1;
        for(i = 0; i < n-j-1; i++){
            // passo 1
            if(v[i] > v[i+1]){
	            ok = 0;
	            int aux = v[i];
	            v[i] = v[i+1];
	            v[i+1] = aux;
            }
        }
    }
}                        
int main(){
    int v[] = {10,9,8,-2,-6,-8,-4,35,1,9};
    int n = 10, i;
    cout<<"Vetor original com "<<n<<" elementos"<<endl;
    for(i = 0; i < n; i++)
        cout<<v[i]<<" ";
    cout<<endl;
    // ordenar o vetor
    bubbleSort(v, n);
    cout<<"Vetor ordenado com"<<n<<" elementos"<<endl;
    for(i = 0; i < n; i++)
        cout<<v[i]<<" ";
    cout<<endl;
}