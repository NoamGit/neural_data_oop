classdef Response < Trial
    %RESPONSE describes the neural response data. Inheritates from trila in
    %order to spare copies of mutual infromation for all cells such as dt,
    % stimulus etc.
    
    properties
        rawDat              % raw data 
        deltaF              % Delta F over F
        ca                  % Calcium response estimation
        inference_param     % parameters for spike inference
        spike_val           % spike values
        stats               % response statistics
    end
   
    
    methods
        % constructor
        function obj = Response(rawData)
            obj.rawDat = rawData;
        end
        
        % calculates DF/F for response
        obj = calcDf(obj)
        
        % inferes the spikes
        obj = spikInference(obj)       
    end
    
end

