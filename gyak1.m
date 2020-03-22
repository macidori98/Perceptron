lr = .001;
E = 1;

myLayer = [0 0 0 1];
myData = [  1 1 0; 
            1 0 1; 
            1 0 0; 
            1 1 1 ]; %Az adatom, mellyek fogok dolgozni

[N, n] = size(myData);

%tanulo fuggveny
result = LearningFunction(myLayer, myData, E, lr, N, n);

%Abrazolom a pontjaimat
hold on
i = 1;
while i <= length(myData)
    if myLayer(i) ~= 0
        
        plot(myData(i,2), myData(i,3), 'k*');
        hold on
        
    else
        
        plot(myData(i,2), myData(i,3), 'm*');
        hold on
        
    end
    
    i = i + 1;
end
hold on

X = [  min(myData(:,2));
       max(myData(:,2)) ];
   
a = (X(1) * result(2));
b = (X(2) * result(2));
Y = [  (-result(1) - a)/result(3);
       (-result(1) - b)/result(3) ];

%abrazolom az egyenesemet
plot(X, Y, 'c');