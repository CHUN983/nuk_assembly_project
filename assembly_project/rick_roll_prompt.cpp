#include<iostream>
using namespace::std;

int main(){
    for(int i=1; i<=28; i++){
        cout<<"mov edx, OFFSET arr"<<i<<endl;
        cout<<"call WriteString"<<endl;
        cout<<"mov eax, 60"<<endl;
        cout<<"call delay"<<endl;
        cout<<"mov ah, 0 "<<endl;
        cout<<"INVOKE GetKeyState, VK_X\n";
        cout<<".IF ah"<<endl;
        cout<<"     jmp stop1"<<endl;
        cout<<".ENDIF"<<endl;
    }
}