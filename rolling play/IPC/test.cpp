#include <iostream>
#include <iomanip>

using namespace std;

int main(){
	float a; 
	int cont=0;
	cin>>a;
	cout<<"NOTAS:"<<endl;
	a+=0.001;
	while(a>=100){
		a = a-100;
		cont++;
	};
	cout<<cont<<" nota(s) de R$ 100.00"<<endl;
	cont=0;
	while(a>=50){
		a = a-50;
		cont++;
	};
	cout<<cont<<" nota(s) de R$ 50.00"<<endl;
	cont=0;
	while(a>=20){
		a = a-20;
		cont++;
	};
	cout<<cont<<" nota(s) de R$ 20.00"<<endl;
	cont=0;
	while(a>=10){
		a = a-10;
		cont++;
	};
	cout<<cont<<" nota(s) de R$ 10.00"<<endl;
	cont=0;
	while(a>=5){
		a = a-5;
		cont++;
	};
	cout<<cont<<" nota(s) de R$ 5.00"<<endl;
	cont=0;
	while(a>=2){
		a = a-2;
		cont++;
	};
	cout<<cont<<" nota(s) de R$ 2.00"<<endl<<"MOEDAS:"<<endl;
	cont=0;
	while(a>=1){
		a = a-1;
		cont++;
	};
	cout<<cont<<" moeda(s) de R$ 1.00"<<endl;
	cont=0;
	while(a>=0.50){
		a = a-0.50;
		cont++;
	};
	cout<<cont<<" moeda(s) de R$ 0.50"<<endl;
	cont=0;
	while(a>=0.25){
		a = a-0.25;
		cont++;
	};
	cout<<cont<<" moeda(s) de R$ 0.25"<<endl;
	cont=0;
	while(a>=0.10){
		a = a-0.10;
		cont++;
	};
	cout<<cont<<" moeda(s) de R$ 0.10"<<endl;
	cont=0;
	while(a>=0.05){
		a = a-0.05;
		cont++;
	};
	cout<<cont<<" moeda(s) de R$ 0.05"<<endl;
	cont=0;
	while(a>=0.01){
		a = a-0.01;
		cont++;
	};
	cout<<cont<<" moeda(s) de R$ 0.01"<<endl;
	return 0;
}