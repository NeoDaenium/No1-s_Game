/*
getHeuristic(FromNode, TargetNode): int
Returns heuristic value of Source node.  
Part of A* algorithm as it takes into account an estimated distance of each node to the target node

An accurate heuristic value makes the algorithm more efficient and accurate.
An innacurate heuristic value does NOT mean that there's less chance to compute the path.
*/

return(abs(getNodeX(argument[1]) - getNodeX(argument[0])) + abs(getNodeY(argument[1]) - getNodeY(argument[0])));

//In the case of rm_PathFinding example, the following heuristic is not accurate since the example doesn't allow
//diagonal movement:
//return(point_distance(getNodeX(argument[0]), getNodeY(argument[0]), getNodeX(argument[1]), getNodeY(argument[2])));
