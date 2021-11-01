var newUserData = argument0;

/*
            $temp = $temp.$result[0]['score'].",";
            $temp = $temp.$result[0]['progressLevel'].",";
            $temp = $temp.$result[0]['email'].",";
            $temp = $temp.$result[0]['progressscore'].",";

            //return $temp;
            $userPogressRanges = $this -> getRangeOfUserProgress($result[0]['progressscore']);
            $userProgressPercentage = $this -> getUserProgressPercentag($uid);

            $temp = $temp.$userProgressPercentage.",";
            $temp = $temp.strval($userPogressRanges[0]).",".strval($userPogressRanges[1]).",".strval($userPogressRanges[2]);
*/

userDataArray[0] = 0;
userDataArray    = scr_between_comma_array(newUserData,userDataArray,",");


global.userProgressLevel = real(userDataArray[1]);

score                = real(userDataArray[0]);
global.email         = string(userDataArray[2]);
global.ProgressScore = real(userDataArray[3]);

global.userProgressPerc = real(userDataArray[6]);

global.age    = real(userDataArray[4]);
global.gender = real(userDataArray[5]);

global.userProgressRange[0] = real(userDataArray[7]);
global.userProgressRange[1] = real(userDataArray[8]);
global.userProgressRange[2] = real(userDataArray[9]);
