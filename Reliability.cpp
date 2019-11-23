#include<bits/stdc++.h>

using namespace std;

int main(){
    freopen("input.txt","r",stdin);
    string a,b,s;
    int cnt=0,t=0;
    cin>>s;
    while(cin>>a){
        ++t;
        for(int i=0;i<a.size();++i){
            if(a[i]!=s[i]){
                ++cnt;
            }
        }
    }
    double prob=1.0/s.size();
    prob*=(cnt)/t;
    prob*=100;
    cout<<"Reliability of PUF = "<<prob<<"%\n";
    return 0;
}
