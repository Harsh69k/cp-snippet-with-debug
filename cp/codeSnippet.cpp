#include <bits/stdc++.h>


using namespace std;
using namespace chrono;

#ifndef ONLINE_JUDGE
#include <bits/debug.h>
#define inout  \
freopen("paste the input file location", "r", stdin)  ;\
freopen("output file location output.txt", "w", stdout);\
freopen("error out put location error.txt", "w", stderr) ; \
auto start = high_resolution_clock::now();
#define Time auto end = high_resolution_clock::now();\
std::chrono::duration<double> time=(end - start);\
milliseconds d = std::chrono::duration_cast<std::chrono::milliseconds>(time);\
cerr<<"\n"<<d.count()<<"ms\n";

#else
#define inout;
#define Time;
#define dbg(...)

#endif

#define setIO                        \
ios_base::sync_with_stdio(false); \
cin.tie(nullptr);                 \
cout.tie(nullptr);


#define code by Harsh Anand
#define Inf 2147483647
#define Pi acos(-1.0)
#define no           cout<<"NO\n"
#define yes          cout<<"YES\n"
#define br           cout<< "\n"; //yey html
template <typename T> void rd(T& a) {  cin >> a; }
template <typename T, typename... Args> void rd(T& a, Args&... args) { cin >> a;rd(args...);}
template <typename T> bool cmin(T& a, T b) { return b < a ? (a = b, true) : false; }
template <typename T> bool cmax(T& a, T b) { return b > a ? (a = b, true) : false; }

#define  min(a,b) a<b?a:b


void solve() {


}


int main(){
      setIO;
      inout;

      int testcase=1;
      /* uncomment for the test case*/
      // rd(testcase);
      while (testcase--) {
            solve();
      }

      Time;
      return 0;
}











/*      THE END */
