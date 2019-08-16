/*
getShortestPath(SourceNode, TargetNode): ds_list
Computes the shortest path between the two nodes. 
Returns a ds_list containing all the nodes in the path (first and last are included)
If a path could not be found, noone is returned
*/

var Source, Target, OpenedList, ClosedList, PreviousNodes, TentativeDistances, CurrentNode, End, Connections;
var tentativeDistance, Score, heuristicValue, lastConnection, currentScore;

Source = argument[0];
Target = argument[1];

OpenedList = ds_priority_create(); //{Value: Node, Priority: Score}
ClosedList = ds_list_create();
PreviousNodes = ds_map_create();//{Key: Node, Value: PreviousNode}
TentativeDistances = ds_map_create(); //{Key: Node, Value: Distance}

CurrentNode = noone;
ds_priority_add(OpenedList, Source, 1); //start from 1 because 0 means it doesn't exist in list
ds_map_add(TentativeDistances, Source, 0);

while (ds_priority_size(OpenedList) > 0) {
    CurrentNode = ds_priority_find_min(OpenedList);

    if (CurrentNode == Target) {
        break;
    }

    ds_priority_delete_min(OpenedList); //Remove current node
    ds_list_add(ClosedList, CurrentNode);
    
    Connections = __Nodes[CurrentNode, 1];
    End = false;
    lastConnection = ds_map_find_last(Connections);
    for (Neighbour = ds_map_find_first(Connections); End == false; 
        Neighbour = ds_map_find_next(Connections, Neighbour)) {
        if (Neighbour == lastConnection) {
            End = true;
        }
        
        if (ds_list_find_index(ClosedList, Neighbour) != -1) {
            continue;
        }
        
        if (!filterPath(id, Neighbour)) {
            continue;
        }
        
        tentativeDistance = ds_map_find_value(Connections, Neighbour) + ds_map_find_value(TentativeDistances, CurrentNode);
        heuristicValue = getHeuristic(Neighbour, Target);
        
        if (!ds_map_exists(TentativeDistances, Neighbour)) {
            ds_map_add(TentativeDistances, Neighbour, tentativeDistance);
        } else if (tentativeDistance < ds_map_find_value(TentativeDistances, Neighbour)) {
            ds_map_replace(TentativeDistances, Neighbour, tentativeDistance);
        }
        
        currentScore = ds_priority_find_priority(OpenedList, Neighbour);
        Score = ds_map_find_value(TentativeDistances, Neighbour) + heuristicValue + 1;

        if (Score < currentScore || currentScore == 0) {
            if (currentScore == 0) {
                ds_priority_add(OpenedList, Neighbour, Score);
            } else {
                ds_priority_change_priority(OpenedList, Neighbour, Score);
            }
            
            if (!ds_map_exists(PreviousNodes, Neighbour)) {
                ds_map_add(PreviousNodes, Neighbour, CurrentNode);
            } else {
                ds_map_replace(PreviousNodes, Neighbour, CurrentNode);
            }
        }
    }
}

ds_priority_destroy(OpenedList);
ds_list_destroy(ClosedList);
ds_map_destroy(TentativeDistances);
    
if (CurrentNode != Target) {
    ds_map_destroy(PreviousNodes);
    return(noone);
}


var Path;
Path = ds_list_create();
while (true) {
    ds_list_add(Path, CurrentNode);

    if (CurrentNode == Source) {
        reversedPath = ds_list_create();
        for (i = ds_list_size(Path) - 1; i >=0; i-=1) {
            ds_list_add(reversedPath, ds_list_find_value(Path, i));
        }
        
        ds_list_destroy(Path);
        ds_map_destroy(PreviousNodes);
        return(reversedPath);
    }

    CurrentNode = ds_map_find_value(PreviousNodes, CurrentNode);
}

