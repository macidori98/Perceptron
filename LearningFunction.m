function result = LearningFunction(layer, data, E, lr, N, n)
    result = randn(n,1); 
    
    while E > 0
        
        E = 0;
        i = 1;
        
        while i <= N
            
            yi = hardlim( data(i,:) * result ); 
            ei = layer(i) - yi;           
            result = result + lr * ei * data(i,:)'; 
            E = E + ei^2;
            i = i + 1;
            
        end
        
        hold on
        X = [  min(data(:,2));
               max(data(:,2)) ];
   
        a = (X(1) * result(2));
        b = (X(2) * result(2));
        Y = [  (-result(1) - a)/result(3);
               (-result(1) - b)/result(3) ];
        %abrazolom az egyenesemet
        plot(X, Y, 'y');
        
    end
end