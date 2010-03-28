%% Class defs of right-bend pipe

classdef right_bend < node
    properties
    end
    methods
        function [t] = right_bend(number, orientation, prev_node, diameter, dist_prev_node)
            
            %% Default constuctor
            if nargin == 0
                args = {};
            else
                if ~isempty(number)
                    args{1} = number;
                end
                if ~isempty(orientation)
                    args{2} = orientation;
                end
                if ~isempty(prev_node)
                    args{3} = prev_node;
                end
                if ~isempty(diameter)
                    args{4} = diameter;
                end
                if ~isempty(dist_prev_node)
                    args{5} = dist_prev_node;
                end
            end    
            %% calling super constructor.
            t = t@node(args{:});
            
            %% class specific
            
            t.color = 'red';
            t.type = 'Right Bend';
        end
        function [lhs] = node(rhs)
            %% converting function
            lhs.number = rhs.number;
            lhs.type = rhs.type;
            lhs.orientation = rhs.orientation;
            lhs.prev_node = rhs.prev_node;
            lhs.discovered = rhs.discovered;
            lhs.diameter = rhs.diamtere;
            lhs.dist_prev_node = rhs.dist_prev_node;
            lhs.anomalies = rhs.anmoalies;
            lhs.color = rhs.color;
            
            lhs.number_of_edges = rhs.number_of_edges;
            lhs.angles_of_edges = rhs.angles_of_edges;
            
        end
        
    end
end

