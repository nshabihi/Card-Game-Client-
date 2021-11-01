if(ds_exists(global.examList_queue_backUp,ds_type_queue))
{
    if(!ds_queue_empty(global.examList_queue_backUp))
    {
        queueSize = ds_queue_size(global.examList_queue_backUp);
        if(queueSize == global.examCardN)
        {
            for(var i = 0 ;i< global.examCardN;i++)
            {
                temp_backup = ds_queue_dequeue(global.examList_queue_backUp);
                
                if(!is_undefined(ds_map_find_value(global.wrongAnsweredCards, temp_backup)))
                {
                    ds_map_delete(global.wrongAnsweredCards, temp_backup);
                }
                
                ds_queue_enqueue(global.userAllExamsList ,temp_backup);
            }
            ds_queue_enqueue(global.examCardNumbers , global.examCardN);
        }
    }
}


var global.tempExamCount = ds_queue_size(global.examCardNumbers);
if(global.tempExamCount > global.maximumExamCount)
{
    global.maximumExamCount = global.tempExamCount;
}
if(global.thisExamNumber != global.maximumExamCount)
    global.thisExamNumber++;

global.examList_queue = ds_queue_create();
global.examList_queue_backUp = ds_queue_create();
global.examCardN = ds_queue_dequeue(global.examCardNumbers);
//global.examCardN_backUp = global.examCardN;
if(global.examCardN != 0)// the default value when there is not any thing in queue.
{
    for(var i = 0 ;i< global.examCardN;i++)
    {
        var tempVocab = ds_queue_dequeue(global.userAllExamsList);
        ds_queue_enqueue(global.examList_queue, string_lower(tempVocab));
        ds_queue_enqueue(global.examList_queue_backUp, string_lower(tempVocab));
    }
}
