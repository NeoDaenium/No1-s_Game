/*
disconnectNodes(Node1ID, Node2ID): void
Disconnects the two nodes.  
*/

var node1, node2;
node1 = argument[0];
node2 = argument[1];

if (ds_map_exists(__Nodes[node1, 1], node2)) {
    ds_map_delete(__Nodes[node1, 1], node2);
    ds_map_delete(__Nodes[node2, 1], node1);
} 
