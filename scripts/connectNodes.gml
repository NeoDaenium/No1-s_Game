/*
connectNodes(Node1ID, Node2ID, Distance): void
Connects the two nodes and sets the distance between them.  
If the two nodes are already connected, their distance is replaced.
*/

var node1, node2;
node1 = argument[0];
node2 = argument[1];

if (ds_map_exists(__Nodes[node1, 1], node2)) {
    ds_map_replace(__Nodes[node1, 1], node2, argument[2]);
    ds_map_replace(__Nodes[node2, 1], node1, argument[2]);
} else {
    ds_map_add(__Nodes[node1, 1], node2, argument[2]);
    ds_map_add(__Nodes[node2, 1], node1, argument[2]);
}


