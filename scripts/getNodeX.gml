/*
getNodeX(nodeID): int
Returns x position of node with given ID
*/

with(objMap) {
    var nodesPerRow;
    nodesPerRow = room_width div global.NodeSize;
    row = argument[0] div nodesPerRow;
    column = argument[0] mod (nodesPerRow );

    return(column * global.NodeSize);
}
