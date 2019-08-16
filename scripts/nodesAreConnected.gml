/*
nodesAreConnected(node1ID, node2ID): Boolean
Returns whether the two nodes are connected or not.
*/

var map;
map = getNeighbours(argument[0]);
return(ds_map_exists(map, argument[1]));

