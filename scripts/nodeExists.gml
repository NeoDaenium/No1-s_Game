/*
nodeExists(nodeID): Boolean
Returns whether node with given id exists
*/


if (__NodesCount <= argument[0]) {
    return(false);
}

if (ds_list_find_index(__RemovedNodes, argument[0]) != -1) {
    return(false);
}

if (ds_list_find_index(__ActiveNodes, argument[0]) == -1) {
    return(false);
}

return(true);
