A=input('Enter a co-efficient Matrix A:');
B=input('Enter Source Vector B:');
P=input('Enter intial Guess Vector:');
n=input('Enter no of interations:');
N=length(B);
e=input('Enter your tollerance:');
Xzeros(N,1);

for j=1:n
    for i=1:N
      X(i)=(B(i)/A(i,i))-(A(i,[i:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
    end
    fprintf('Iteration no %d\n',j)
    X
    if abs(X-P)<e
      break
    end
    P=X;
end
