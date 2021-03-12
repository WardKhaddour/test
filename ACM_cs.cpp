#include<bits/stdc++.h>

using namespace std;

const int MAX = 1e5 + 55;

int a[MAX], cs[MAX]; // we assume that elements of a is small, but if a[i] > 2e4 we should use long long

int main(){

    int n;cin>>n;
    for(int i = 0 ; i < n ;++i) cin>>a[i];

    cs[0] = a[0];
    for(int i = 1 ; i < n ; ++i) cs[i] = cs[i-1] + a[i];

    int m;cin>>m;
    while(m--){
        int l, r;cin>>l>>r;
        int res = cs[r]; // int because the same note above :)
        // if l != 0 because we don't -1 as index :)
        if(l) res -= cs[l-1];
        cout<<res<<'\n';
    }


return 0;
}
