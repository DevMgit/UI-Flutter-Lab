void main() { 
    int a =0,b=1; 
    int n=5; 
    print("$a\n$b"); 
    for(int i=0;i<n;i++){ 
        int fib = a+b; 
        print("$fib "); 
        a=b; 
        b=fib; 
    } 
} 
