flag = true;
milestones = 40; // first milestone is 30
firstDiff = 50;
incerementalDiff = 20;
counter = 0;
while(flag)
{
if(score<milestones)
    flag = false;
else
    milestones += firstDiff + incerementalDiff * counter;
    counter++;
}

if(score+global.scoreDiff > milestones)
result = counter+1;
else
result = 0;

return result;
