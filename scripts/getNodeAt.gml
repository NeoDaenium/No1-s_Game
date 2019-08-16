/*
getNodeAt(x, y): int
Returns node ID at given positions
*/

if (CharFight_obj.x >= room_width || CharFight_obj.x <= 0 || CharFight_obj.y >= room_height || CharFight_obj.y <= 0) {
    return(noone);
}


var row, column;
row = argument[1] div global.NodeSize;
column = argument[0] div global.NodeSize;

with(objMap) {
    return(nodes[column, row]);
}
