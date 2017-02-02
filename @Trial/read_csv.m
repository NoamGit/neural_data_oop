function obj = read_csv(obj, path)
%stores the csv table in the daatastructure

pathTokens = textscan( path, '%s','delimiter','\');
obj.source_path = path;
obj.source_name = pathTokens{1}{end};

data_table = readtable(path); % data frame
obj.cells = createCellTable(data_table);

end

%%
function tbl = createCellTable(df)
    
    % iterate ove columns
    tbl = table();
    itr = Iterator(df);
    id_counter = 1;
    while itr.hasNext
        cld = itr.getNext;
        
        % extract cell information and update table
        if ~isempty(strfind(cld.head,'Cell'))
            pos_cell = textscan(cld.head,'%s','delimiter',{'Cell','-','_'});
            position = arrayfun(@str2double,[pos_cell{:}]);
            position = {position(~isnan(position))};
            
            % initialize response
            response = Response(cld.value);
            
            cell_itr = table(id_counter , position , response);
            tbl = [tbl; cell_itr];
            id_counter = id_counter +1;
        end
    end
    
end
