#include<bits/stdc++.h>

using namespace std;

int main(){
    ifstream f1("input.txt");
    int cnt=0,t=0;
    vector<string> a;
    while(!f1.eof()){
        string s;
        cin>>s;
        a.push_back(s);
    }
    int cnt=0;
    for(int i=0;i<a.size();++i){
        for(int j=i+1;j<a.size();++j){
            for(int k=0;k<a[i].size();++k){
                if(a[i][k]!=a[j][k]){
                    ++cnt;
                }
            }
        }
    }
    double prob=2.0/(a.size()*(a.size()-1));
    prob*=(cnt)/a[0].size();
    prob*=100;
    cout<<"Uniqueness of PUF = "<<prob<<"%\n";
    return 0;
}
