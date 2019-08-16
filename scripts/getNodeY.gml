/*
getNodeY(nodeID): int
Returns y position of node with given ID
*/

with(objMap) { 
    var nodesPerRow;
    nodesPerRow = room_width div global.NodeSize;
    row = argument[0] div nodesPerRow;

    return(row * global.NodeSize);
}
