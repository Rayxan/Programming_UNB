#include<bits/stdc++.h>
using namespace std;
int main(){
	int i;
	double n[100];
	cin>>n[0];
	cout<<fixed<<setprecision(4)<<"N["<<0<<"] = "<<n[0]<<endl;
	for(i=1;i<100;i++){
		n[i]=n[i-1]/2;
	 	cout<<fixed<<setprecision(4)<<"N["<<i<<"] = "<<n[i]<<endl;
	}
	return 0;
}