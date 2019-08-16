/*
initializeGraph(): void
Only needs to be called once in create event.  Do NOT modify these values manually and directly.
An instance calling this script is basically considered as the graph
*/

__RemovedNodes = ds_list_create(); //list of removed nodes in order to be re-used
__ActiveNodes = ds_list_create(); //list of active nodes

__NodesCount = 0; //Number of nodes (removed + active), used to add new nodes when there are none to be re-used
__Nodes[0, 1] = noone; //list containing connections
