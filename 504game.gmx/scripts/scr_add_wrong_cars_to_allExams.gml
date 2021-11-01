var tempWrongCount = ds_map_size(global.wrongAnsweredCards)
if(tempWrongCount > 0)
{
    for(var i = 0; i< tempWrongCount; i++)
    {
        var tempWord = ds_map_find_first(global.wrongAnsweredCards);
        ds_queue_enqueue(global.userAllExamsList, tempWord);
        ds_queue_enqueue(global.examCardNumbers , 1);
        
        ds_map_delete(global.wrongAnsweredCards , tempWord);
    } 
}
