lr = .001;
E = 1;

myLayer = [ 1 0;
            0 1 ];
myData = [  1 0 1 0 0 1 0 0 1 0;
            1 1 0 1 1 1 1 1 0 1 ]; %Az adatom, mellyek fogok dolgozni I, H

[N, n] = size(myData);

%tanulo fuggveny
result = LearningFunctionImage3x3(myLayer, myData, E, lr, N, n);
result
