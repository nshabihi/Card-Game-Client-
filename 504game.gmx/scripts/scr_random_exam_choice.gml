p = global.indexOfLastLevel % 7;

VCFL = 0;//vocab Count For Last Lesson
vocabNum = 0;

switch(p)
{
    case 1: VCFL = 3;   break;
    
    case 2: VCFL = 4;   break;
    
    case 3: VCFL = 6;   break;
    
    default : VCFL = 7;
}

vocabNum  = floor(global.indexOfLastLevel/7) + VCFL ;
randomize();
rand = irandom(vocabNum-1);
result = floor(rand/7)*12 + rand%7;

return result;
