//FB_treshold for maximum valid time between sequences
var _value = 2*argument0;

switch (_value)
{
    case 0:  
    {
        return 0; //0.8; //0.5; //0.3 : 0 faults
        break;
    }
    case 2:
    {
        return 0.9; //1; //1.8; //1; //0.3 : 0 faults
        break;
    }
    case 4:
    {
        return 3;//2.5; //3.7; //3.2; //2; //1.5 : 1 faults
        break;
    }
    case 6:
    {
        return 4;//3.5; //4; //3.5; //2.2; //1.5 : 1 faults
        break;
    }
    case 8:
    {
        return 6;//4.5; //5; //4; //3.3; // 2.7 : 2 faults
        break;
    }
    case 10:
    {
        return 7;//5; //6; //5; //3.5; // 2.7 : 2 faults
        break;
    }
    case 12:
    {
        return 8.5;//5; //6; //5; //3.5; // 2.7 : 2 faults
        break;
    }
    default: break;
        
}
