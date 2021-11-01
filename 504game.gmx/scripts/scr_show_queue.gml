var queue = argument0;
var alaki = ds_queue_create();

ds_queue_copy(alaki, queue);

var result = "";
while(ds_queue_size(alaki) > 0)
{
    result += string(ds_queue_dequeue(alaki));
    
    if(ds_queue_size(alaki) > 0 )
        result += ",";
}
