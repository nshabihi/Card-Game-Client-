var examListArray = argument0;
//scr_show_array(examListArray);
var count = array_length_1d(examListArray);
var index = 0;

while(count > 0) // Why While?
{
    var tempVocabCount = real(examListArray[index]);
    if(tempVocabCount > 0)
    {
        ds_queue_enqueue(global.examCardNumbers, tempVocabCount);
        for(var i = 1;i<=tempVocabCount;i++)
        {
            ds_queue_enqueue(global.userAllExamsList,examListArray[index+i]);
        }
        index += (tempVocabCount + 1);
        count -= (tempVocabCount + 1);
    }
    else
    {
       break; 
    }
}
