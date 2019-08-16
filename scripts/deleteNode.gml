/*
deleteNode(NodeID): void
Deletes node with given ID
*/

if (ds_list_find_index(__RemovedNodes, argument[0]) != -1 || ds_list_find_index(__ActiveNodes, argument[0]) == -1) {
    exit; //already deleted or doesn't exist
}

//Disconnect first:
var neighbours, last, Connectionskp;
Connections = getNeighbours(argument[0]);

    //Loop through all neighbours and disconnect them from this node
    for (Neighbour = ds_map_find_first(Connections); true; 
            Neighbour = ds_map_find_next(Connections, Neighbour)) {
            disconnectNodes(argument[0], Neighbour);
            
        if (Neighbour == ds_map_find_last(Connections)) {
            break;
        }
    }

    
ds_list_add(__RemovedNodes, argument[0]); //add to removed nodes, so that it can be re-used
ds_list_delete(__ActiveNodes, ds_list_find_index(__ActiveNodes, argument[0])); //remove from active nodes

ds_map_destroy(__Nodes[argument[0], 1]); //Connections List

