/*
newNode([customNodeID]): int
Returns the ID of the node
*/


var nodeID;
if (argument_count == 0) {
    if (ds_list_size(__RemovedNodes) > 0) { //Re-use deleted node
        nodeID = ds_list_find_value(__RemovedNodes, 0);
        ds_list_delete(__RemovedNodes, 0);
    } else {
        nodeID = __NodesCount;
        __NodesCount+=1;
    }
} else {
    nodeID = argument[0];
    if (ds_list_find_index(__ActiveNodes, nodeID) != -1) {
        ds_map_destroy(__Nodes[nodeID, 1]);
        ds_list_delete(__ActiveNodes, ds_list_find_index(__ActiveNodes, nodeID));
    }
}

__Nodes[nodeID, 1] = ds_map_create(); //Connections map: Key = NodeID, Value = Distance


ds_list_add(__ActiveNodes, nodeID);
return(nodeID);


