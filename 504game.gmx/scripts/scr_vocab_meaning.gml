meaningDataSet =
"abandon: desert; leave without planning to come back; quit
\keen: sharp; eager; intense; sensitive
\jealous: wanting what someone else has
\tact: ability to say the right thing
\oath: a promise that something is true; a curse
\vacant: empty; not filled
\hardship: something that is hard to bear difficulty
\gallant: brave; showing respect for women
\data: facts; informations
\unaccustomed: not used to
\bachelor: a man who has not married
\qualify: become fit; show that you are able
\corpse: a dead body, usually of a person
\conceal: hide
\dismal: dark and depressing
\frigid: very cold
\inhabit: live in
\numb: without the power of feeling; deadened
\peril: danger
\recline: lie down; stretch out; lean back
\shriek: scream
\sinister: evil; wicked; dishonest; frightening
\tempt: try to get someone to do something
\wager: bet
\typical: usual; of a kind
\minimum: the least possible amount; the lowest amount
\scarce: hard to get; rare
\annual: once a year; something that appears yearly or lasts for a year
\persuade: win over to do or believe; make willing
\essential: necessary; very important
\blend: mix together thoroughly; a mixture
\visible: able to be seen
\expensive: costly; high-priced
\talent: natural ability
\devise: think out; plan; invent
\wholesale: in large quantity; less than retail in price
\vapor: moisture in the air that can be seen; fog; mist
\eliminate: get rid of; remove; omit
\villain: a very wicked person
\dense: closely packed together; thick
\utilize: make use of
\humid: moist; damp
\theory: explanation based on thought observation or reasoning
\descend: go or come down from a higher place to a lower level
\circulate: go round; go from place to place or person to person
\enormous: extremely large; huge
\predict: tell beforehand
\vanish: disappear; disappear suddenly
\tradition: beliefs, opinions, and customs handed down from one generation to another
\rural: in the country
\burden: what is carried; a load
\campus: grounds of a college, university, or school
\majority: the larger number; greater part; more than half
\assemble: gather together; bring together
\explore: go over carefully; look into closely; examine
\topic: subject that people think, write, or talk about
\debate: a discussion in which reasons for and against something are brought out
\evade: get away from by trickery or cleverness
\probe: search into; examine thoroughly; investigate
\reform: make better; improve by removing faults
\approach: come near or nearer to
\detect: find out; discover
\defect: fault; that which is wrong
\employee: a person who works for pay
\neglect: give too little care or attention to
\deceive: make someone believe as true something that is false; mislead
\undoubtedly: certainly; beyond doubt
\popular: liked by most people
\thorough: being all that is needed; complete
\client: person for whom a lawyer acts; customer
\comprehensive: including much; covering completely
\defraud: take money, rights, etc., away by cheating
"

global.meaning_map =  ds_map_create();
global.meaningDataSet[0]= "";
global.meaningDataSet = scr_between_comma_array(meaningDataSet, global.meaningDataSet , "\")
for (i=0; i<72; i+=1)
{
    global.meaningDataSet[i] = string_copy(global.meaningDataSet[i],1 , string_length(global.meaningDataSet[i])-1);
    pos = string_pos(":", global.meaningDataSet[i]);
    vocab = string_copy(global.meaningDataSet[i] , 1 , pos-1);
    meaning = string_copy(global.meaningDataSet[i] , pos+2 , string_length(global.meaningDataSet[i]));
    ds_map_add(global.meaning_map , vocab , meaning);
}

/*for (i=0; i<42; i+=1)
{
    value = ds_map_find_value(global.meaning_map , string_lower( global.verbDataBase [i]));
}
*/
/*var vocab = string_pos("\", ": ")
temp = string_length(vocab)+3;
var meaning   = string_pos(last_limit, url_result) - 1;

return scr_substr(url_result, subStrStart, subStrEnd);
