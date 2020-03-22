function result = LearningFunctionImage3x3(layer, data, E, lr, N, n)
    
    result = randn(n,2); 
    result
    
    while E > 0
        
        E = 0;
        
        for i = 1:N
            
            yi = hardlim( data(i,:) * result(:,1)); 
            ei = layer(i, 1)- yi;  
            result(:,1) = result(:,1) + lr * ei * data(i,:)';
            E = E + ei .^ 2;
            
            yi_ = hardlim( data(i,:) * result(:,2)); 
            ei_ = layer(i, 2) - yi_; 
            result(:,2) = result(:,2) + lr * ei_ * data(i,:)';
            E = E + ei_ .^ 2;
            
        end
    end
end