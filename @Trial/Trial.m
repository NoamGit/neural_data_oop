classdef Trial
    %Trail data structure. Has a table of the responses of all cells and
    %additional information regarding the single trail (system parameter
    %etc)
    
    properties(Access = private)
        source_name
        source_path
        id
        cells
    end
    
    properties(Access = protected)
        system_conf
        stimulus
        experimet_details
        dt
    end
    
    methods(Access = public)
        % constructor
        function obj = Trial()
            obj.cells = table();
        end
        
        % read table csv and store it in cell table
        obj = read_csv(obj, path)
            
    end
    
end

