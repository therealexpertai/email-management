//Topic Modeling
SCOPE SENTENCE
{
	//Topic modeling
	DOMAIN(01.00:HIGH)
	{
		ANCESTOR(84549,94457,162,100621206,146308,94459,152088,152216,91490,173861,34696) //@SYN: #84549# [discontent] //@SYN: #94457# [unsuccessful] //@SYN: #162# [disappointing] //@SYN: #100621206# [disappointment] //@SYN: #146308# [disappointment] //@SYN: #94459# [frustrated] //@SYN: #152088# [disappoint] //@SYN: #152216# [displease] //@SYN: #91490# [unpleasant] //@SYN: #173861# [upset] //@SYN: #34696# [discontent] [frustrated]
	}

//Topic modeling
    DOMAIN(01.00:HIGH)
    {
        ANCESTOR(73910,87617,94459) //@SYN: #73910# [disappoint]//@SYN: #87617# [unsatisfactory] //@SYN: #94459# [frustrated]
    }

	//Topic modeling
	DOMAIN(01.00)
	{
		!TYPE(PRO)
		<:4>
		ANCESTOR(91490,84396,87135,87723) //@SYN: #91490# [unpleasant] //@SYN: #84396# [incongruous]     //@SYN: #87135# [unfortunate] //@SYN: #87723# [sad]
	}

	//Topic modeling
	DOMAIN(01.00)
	{
		ANCESTOR(30955,4346,30954,70595,140299,69226:0) //@SYN: #30955# [claim] //@SYN: #4346# [claim]   //@SYN: #30954# [claim] //@SYN: #70595# [give up]
	}

	//Topic modeling
    DOMAIN(01.00:NORMAL)
    {
        SYNCON(66118,92628,85321,86633) //@SYN: #66118# [pass out] //@SYN: #92628# [unreliable]          //@SYN: #85321# [unreliable] //@SYN: #86633# [unreliable]
    }

    //Topic modeling
    DOMAIN(01.00:NORMAL)
    {
        SYNCON(84841,84837)//@SYN: #84841# [rude] //@SYN: #84837# [rude]
    }

	//Topic modeling
	DOMAIN(01.00:HIGH)
	{
		ANCESTOR(100836925,69825,150227,69844,100256401) //@SYN: #69825# [complain] //@SYN: #150227# [complain] //@SYN: #69844# [lament] //@SYN: #4346# [claim] //@SYN: #30954# [claim] //@SYN: #30955# [claim]
	}

	//Topic modeling
	DOMAIN(01.00)
	{
		ANCESTOR(113488,95009:0,91528) //@SYN: #113488# [v. of negative feelings] //@SYN: #95009# [tired] //@SYN: #91528# [displeasing]
	}

	//Topic modeling
	DOMAIN(01.00)
	{
		ANCESTOR(154781,33566,62363,2622,101436482,33901,34597,76992,76991,128691,73788,66348) //# 154781: trouble; 33566: trouble; 62363: trouble, distress, ill; 2622: difficulty, trouble; 101436482: distress, worry, trouble, chagrin; 33901: bother, fuss, trouble, hassle; 34597: aggravation, exasperation, trouble; 76992: disturb, trouble, put out, inconvenience, discommode, disoblige, incommode; 76991: trouble, bother; 128691: trouble, inconvenience; 73788: disturb, trouble; 66348: pain, afflict, trouble, ail, smite
	}

	//Topic modeling
	DOMAIN(01.00:LOW)
	{
		ANCESTOR(95199,84782,87539,92309,88166,93671,100017949,100880643,62325,192813)-LEMMA("wrong") // # 95199: wrong, false, untrue; 84782: false, mistaken; 87539: fictitious, pretended, assumed, sham, false, fictive; 92309: delusive, false; 88166: false; 93671: hollow, false; 100017949: falseness, falsity, sham, phoniness, bogusness; 100880643: falsehood, false statement, untruth, falsity //@SYN: #62325# [defect] //@SYN: #192813# [incorrectly]
	}

    //Topic modeling
    DOMAIN(01.00:LOW)
    {
        SYNCON(161110,193087,26973,95849)//@SYN: #161110# [bonkers] //@SYN: #193087# [sadly] //@SYN: #26973# [concern] //@SYN: #95849# [ridiculous]
    }

	//Topic modeling
	DOMAIN(01.00)
	{
		ANCESTOR(100190084,107658402,77269,44434) //@SYN: #100190084# [fraud] //@SYN: #107658402#        [swindle] //@SYN: #77269# [cheat] //@SYN: #44434# [swindler]
	}

	//Topic modeling
	DOMAIN(01.00)
	{
		ANCESTOR(34596,100192242,159) //# 34596: frustration; 100192242: defeat, frustration; 159: frustrating, foiling, thwarting, frustration
	}

	//Topic Modeling
	DOMAIN(01.00)
	{
		SYNCON(95849) //@SYN: #95849# [ridiculous]
		OR
		LIST(94531:99,87598,87597:99,82399)//@SYN: #94531# [bad] //@SYN: #87598# [terrible] //@SYN:      #87597# [bad] //@SYN: #82399# [horrible]
	}

	//Topic modeling adjs
	DOMAIN(01.00)
	{
		ANCESTOR(81941,91512,91515,81948,88287,95169,91511) // # 81941: angry; 91512: exasperated; 91515: pained, offended; 81948: indignant, outraged, incensed; 88287: bitter; 95169: vexed, annoyed, harassed, harried, pestered; 91511: annoyed, irritated, teed off
	}

    //Topic modeling
    DOMAIN(01.00:NORMAL)
    {
        ANCESTOR(102727213)//@SYN: #102727213# [theft]
    }

	//Topic modeling
	DOMAIN(01.00:LOW)
	{
		ANCESTOR(193096,24854) // # 193096: not, nae; 24854: bad, badness
		AND
		ANCESTOR(73779) //# 73779: impress, affect, move
	}

	//Topic modeling
	DOMAIN(01.00:LOW)
	{
		SYNCON(193096) //@SYN: #193096# [not]
		<:5>
		ANCESTOR(117054581:0,73984:2,87586,84547) //@SYN: #117054581# [satisfaction]
	}

	//Topic Modeling
	DOMAIN(01.00:LOW)
	{
		SYNCON(2662,100664183,317708,212690) //@SYN: #2662# [investigation] //@SYN: #100664183# [consumer protection] //@SYN: #317708# [consumer protection association] //@SYN: #212690# [consumer protection legislation]
	}

	//Topic Modeling
	DOMAIN(01.00:LOW)
	{
		ANCESTOR(153673)//@SYN: #153673# [penalty]
	}

	//Topic Modeling
	DOMAIN(01.00:LOW)// I had to throw it away
	{
		SYNCON(75787)//@SYN: #75787# [throw away]
	}
}

SCOPE SENTENCE
{
	//Heuristics
	DOMAIN(01.00:LOW)// I feel frustrated...//I'm really unhappy with respect to...
	{	
		TYPE(PRO)
		<:3>
		!SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er; 192700:   never; 193162: no, nope, nae, nah; 94068: no
		<:3>
		TYPE(AUX,VER)
		<:3>
		!SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er; 192700:   never; 193162: no, nope, nae, nah; 94068: no
		<:5>
		ANCESTOR(94459,87723,87135,172202,91503,69825,150227,69844,323797,73927)// # 94459: frustrated, disappointed, foiled, thwarted, defeated, discomfited, checkmated; 87723: sad, unhappy, saddened; 87135: unfortunate, unhappy, infelicitous, unblessed; 172202: unfortunate, unhappy, infelicitous; 91503: unhappy; 69825: complain, plain, quetch, sound off, kick, crake, kvetch; 150227: complain; 69844: lament, bemoan, deplore, complain, mourn, bewail; 323797: reclaim; 73927: frustrate, harass, harry, plague, provoke, torment, pester, tease, bedevil, chevy, dun, tantalize, taunt, badger, beleaguer, tantalise, chevvy, chivvy, chivy, excruciate, harrow, molest, teaze, torture, blight, bug, monster, hassle, twit, bait, cod, ride, rally, rack
	}

	//Heuristics
	DOMAIN(01.00:LOW)// ...is not what I expected
	{		
		SYNCON(193096,193020,192700,193162)//# 193096: not, nae; 193020: never, ne'er; 192700: never;    193162: no, nope, nae, nah
		<:3>
		+TYPE(PRO)
		<:3>
		LEMMA("expect","imagine","desire","hope","look","look for","request")
	}

	//Heuristics
	DOMAIN(01.00:LOW)// ...to bring to your attention
	{
		LEMMA("bring")
		<-2:2>
		TYPE(PRE)
		<-2:2>
		TYPE(ADJ)
		>>
		LEMMA("attention")
	}

	//Heuristics
	DOMAIN(01.00:NORMAL)// That was an unfair practice
	{
		LEMMA("unfair")
		>>
		LEMMA("practice")
	}

	//Heuristics
	DOMAIN(01.00:NORMAL)// I am fed up with it
	{
		LIST(91513:1)//# 91513: sick, disgusted, abhorred, fed up, fed-up, chocka, chocker
		OR
		KEYWORD("fed up")
	}

    //Heuristics
	DOMAIN(01.00:LOW)// They haven't provide me with any of the...
    {
		LEMMA("have")
		>>
		LEMMA("not")
		>>
		LEMMA("provide")
		>>
		KEYWORD("me") + TYPE(PRO)
		<:2>
		LEMMA("any")
	}

	//Heuristics
	DOMAIN(01.00)// The customer service doesn't answer
	{
		ANCESTOR(101060653,4960:0,195596)// # 101060653: customer service, customer care; 4960: help,    aid, assistance, helping, assist; 195596: customer service
		<:5>
		SYNCON(193096)//# 193096: not, nae
		<:3>
		LEMMA("answer","help","solve","respond","answer","reply")
	}

	//Heuristics
	DOMAIN(01.00)// He didn't help me
	{
		TYPE(PRO)
		<:5>
		SYNCON(193096)//# 193096: not, nae
		<:3>
		LEMMA("answer","help","solve","respond","answer","reply")
	}

	//Heuristics
	DOMAIN(01.00:LOW)// I experienced an issue
	{
		LEMMA("experience","a number of","ongoing","odd")
		<-3:3>
		LEMMA("issue","problem","incident","breakdown")
	}

	//Heuristics
	DOMAIN(01.00:LOW)// to fix my problems
	{
		KEYWORD("to")
		>>
		ANCESTOR(66884)//@SYN: #66884# [improve]
		<-3:3>
		LEMMA("issue","problem","incident","breakdown")
	}

    //Heuristics
	DOMAIN(01.00:LOW)// It worked before... 
    {
		TYPE(PRO)
		>>
		LEMMA("work")
		>>
		LEMMA("before")
	}

	//Heuristics
	DOMAIN(01.00)// ...ignoring all my requests
	{
		!SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er; 192700:   never; 193162: no, nope, nae, nah; 94068: no
		<:3>
		LEMMA("ignore")
		<:5>
		TYPE(ADJ)
		<:2>
		LEMMA("request","call","demand","question","ask","call")
	}

	//Heuristics
	DOMAIN(01.00)
    {
        LEMMA("poor","low","bad")
        >>
        LEMMA("standard")
    }

	//Heuristics
	DOMAIN(01.00:LOW)// resolution of my issues
	{
		LEMMA("resolution")
		<:3>
		TYPE(ADJ:p)+KEYWORD("my")
		>>
		LEMMA("problem","issue")
	}

	//Heuristics
	DOMAIN(01.00:LOW)// take actions to solve
	{
		LEMMA("take")
		<:3>
		LEMMA("action")
	}

	//Heuristics
	DOMAIN(01.00:NORMAL)// I'm canceling our contract
	{
		ANCESTOR(103150005)//@SYN: #103150005# [legal document]
		<-6:6>
		LIST(76856:1)//@SYN: #76856# [cancel]
	}

	//Heuristics
	DOMAIN(01.00:NORMAL)// bad customer care service
	{
		LIST(94531:99,87598,87597:99)//@SYN: #94531# [bad] //@SYN: #87598# [terrible] //@SYN: #87597#    [bad]
		<:2>
		ANCESTOR(101060653)//@SYN: #101060653# [customer service]
	}

	//Heuristics
	DOMAIN(01.00:NORMAL)// it breaks all the time
	{
		ANCESTOR(67468,148630,67107)//@SYN: #67468# [break] //@SYN: #148630# [break down] //@SYN:        #67107# [damage]
		<-5:5>
		LEMMA("all the time")
	}

	//Heuristics
	DOMAIN(01.00:NORMAL)// I have to write to you every other day
	{
		ANCESTOR(115074)//@SYN: #115074# [v. of written verbal communication]
		>>
		KEYWORD("to")
		>>
		TYPE(PRO) + KEYWORD("you")
		>>
		LEMMA("every","every other")
		>>
		ANCESTOR(123924)//@SYN: #123924# [definite time]
	}
}

SCOPE SENTENCE
{
	//Complain
	DOMAIN(01.00:NORMAL)//The workers were very rude
	{
		ANCESTOR(204801)//@SYN: #204801# [bad-mannered]
		<-5:5>
		!SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er; 192700:   never; 193162: no, nope, nae, nah; 94068: no
	}

	//Complain
	DOMAIN(01.00)// The service is not reliable
	{
		SYNCON(193096,193020,192700,193162)//# 193096: not, nae; 193020: never, ne'er; 192700: never;    193162: no, nope, nae, nah
		<:3>
		LEMMA("reliable","affordable","fair","honest","accurate","receive")
	}

    //Problem and Solution
	DOMAIN(01.00:LOW)// ...the problem remain. 
    {
		LEMMA("problem")
		>>
		LEMMA("remain")
	}

    //Problem and Solution
	DOMAIN(01.00)// I received no answer 
    {
		LEMMA("receive")
		>>
		LEMMA("no")
		>>
		LEMMA("answer")
	}

    //Problem and Solution
	DOMAIN(01.00:LOW)// ...it still doesn't work 
    {
		LEMMA("still")
		>>
		LEMMA("do")
		>>
		SYNCON(193096)//# 193096: not, nae
		>>
		LEMMA("work")
	}

    //Problem and Solution
	DOMAIN(01.00:LOW)// I'm concerned with... 
    {
		TYPE(PRO)
		>>
		LEMMA("be")
		<:3>
		LIST(84282:3)//# 84282: concerned
	}

    //Problem and Solution
	DOMAIN(01.00:LOW)// I give up 
    {
		TYPE(PRO)
		>>
		LEMMA("give up")
	}

    //Problem and Solution
	DOMAIN(01.00:LOW)// They refuse to update
    {
		LEMMA("refuse")
		OR
		LEMMA("numerous")
		>>
		LEMMA("time")
	}

    //Problem and Solution
	DOMAIN(01.00)// I'm still waiting for that 
    {
		LEMMA("still")
		>>
		LEMMA("wait","pend","pending","waiting")
	}

    //Problem and Solution
	DOMAIN(01.00:LOW)// They mess it up 
    {
		TYPE(PRO) - KEYWORD("i")
		<:6>
		LEMMA("mess up")
	}

	//Problem and Solution
	DOMAIN(01.00:LOW)// They have never contacted me
	{
		!KEYWORD("i")
		<:3>
		SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er; 192700:    never; 193162: no, nope, nae, nah; 94068: no
		<:2>
		LIST(69156,69168,73459)// # 69156: call; 69168: contact, reach; 73459: write
		>
		TYPE(PRO)
	}
}

SCOPE SENTENCE
{
    //leave that idea
    DOMAIN(01.00:LOW)
    {
        LEMMA("leave")
        <:2>
        LEMMA("idea")
        OR
        LIST(141169)//@SYN: #141169# [forget]
        <:2>
        TYPE(PRO)
    }

    //file a complaint
    DOMAIN(01.00:HIGH)
    {
        LEMMA("file")
        <:3>
        ANCESTOR(33340,30956)//@SYN: #30956# [blame]
    }

    //this is sad
    DOMAIN(01.00:HIGH)
    {
        !LEMMA("make")
        <:2>
        ANCESTOR(87723,87135,172202,91503)//@SYN: #87723# [sad] //@SYN: #87135# [unfortunate] //@SYN:    #172202# [unfortunate] //@SYN: #91503# [unhappy]
    }

    //this makes me sad
    DOMAIN(01.00:LOW)
    {
        LEMMA("make")
        >>
        TYPE(PRO)
        >>
        ANCESTOR(87723,87135,172202,91503)//@SYN: #87723# [sad] //@SYN: #87135# [unfortunate] //@SYN:    #172202# [unfortunate] //@SYN: #91503# [unhappy]
    }

    //I'm discontent
    DOMAIN(01.00:HIGH)
    {
        SYNCON(84549)//@SYN: #84549# [discontent]
    }

    //I've had so many troubles
    DOMAIN(01.00:NORMAL)
    {
        SYNCON(62245,33901)//@SYN: #62245# [inconvenience] //@SYN: #33901# [bother]
    }

    //bad product
    DOMAIN(01.00:NORMAL)
    {
        ANCESTOR(87598,94531)//@SYN: #87598# [terrible] //@SYN: #94531# [bad]
        >>
        LEMMA("product")
    }

    //terrible laptop
    DOMAIN(01.00:NORMAL)
    {
        ANCESTOR(87598,94531)//@SYN: #87598# [terrible] //@SYN: #94531# [bad]
        >>
        ANCESTOR(102424752)//@SYN: #102424752# [products]
    }

    //I wish I bought something else
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("buy")
        >>
        TYPE(PRO)
        >>
        LEMMA("else")
    }

    //not so good
    DOMAIN(01.00:LOW)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        ANCESTOR(117054581:0,73984:2,87586,84547)//@SYN: #117054581# [satisfaction]
    }

    //I'm so disappointed
    DOMAIN(01.00)
    {
        LIST(84552,84550,84551)//@SYN: #84552# [restless] //@SYN: #84550# [disaffected] //@SYN:          #84551# [disgruntled]
    }

    //This laptop sucks
    DOMAIN(01.00:LOW)
    {
        TYPE(ADJ,PRO)
        <:2>
        LEMMA("suck") + TYPE(VER:3)
    }

    //I wouldn't recommend it
    DOMAIN(01.00:LOW)
    {
        TYPE(AUX)
        >>
        SYNCON(193096)//@SYN: #193096# [not]
        >>
        ANCESTOR(115255)//@SYN: #115255# [v. of advice/suggestion]
    }

	//I'm so disappointed
    DOMAIN(01.00:HIGH)
    {
        SYNCON(94459,100621206)//@SYN: #94459# [frustrated] //@SYN: #100621206# [disappointment]
    }

    //I am frustrated
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("frustration","frustrate")
    }



    //They don't even try to listen
    DOMAIN(01.00:NORMAL)
    {
        SYNCON(69391,193096)//@SYN: #69391# [refuse] //@SYN: #193096# [not]
        <:4>
        LEMMA("listen","help","support","respond","try")
    }

    //I pay for the same problem
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("same")
        >>
        LEMMA("problem","issue")
    }

    //which I reported earlier
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("report") + TYPE(VER)
        >>
        SYNCON(193658)//@SYN: #193658# [early]
    }

    //I have tried everything
    DOMAIN(01.00:NORMAL)

    {
        SYNCON(77086)//@SYN: #77086# [try]
        >>
        LEMMA("everything")
    }

    //not capable
    DOMAIN(01.00:LOW)
    {
        ANCESTOR(193096,94068)//@SYN: #193096# [not] //@SYN: #94068# [no]
        >>
        LEMMA("sign","capable")
    }

    //so disappointing
    DOMAIN(01.00:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        ANCESTOR(93093,162)//@SYN: #93093# [disappointing] //@SYN: #162# [disappointing]
    }

    //you should not play with the sentiment of people
    DOMAIN(01.00:LOW)
    {
        LEMMA("play")
        <:3>
        ANCESTOR(158584,100009415)//@SYN: #158584# [sentiment] //@SYN: #100009415# [emotions]
    }

    //nothing to do
    DOMAIN(01.00:LOW)
    {
        KEYWORD("nothing")
        <:2>
        TYPE(AUX)
        >>
        SYNCON(66059)//@SYN: #66059# [act]
    }

    //expensive
    DOMAIN(01.00:LOW)
    {
        !SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        ANCESTOR(86457)//@SYN: #86457# [expensive]
    }

    //lack of USB ports
    DOMAIN(01.00:LOW)
    {
        LEMMA("lack")
        >>
        KEYWORD("of")
    }

    //Poor quality
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("poor")
        >>
        LEMMA("quality")
    }

    //keyboard fails to work
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("fail")
        <:3>
        LIST(76576) //@SYN: #76576# [work]
    }

    //Feels like it will fall apart
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("feel like")
        <:4>
        ANCESTOR(67468,73854) //@SYN: #67468# [break] //@SYN: #73854# [break down]
    }

    //cheap feel
    DOMAIN(01.00:LOW)
    {
        LEMMA("cheap")
        AND
        LIST(147332,103955369,62576) //@SYN: #147332# [feel] //@SYN: #103955369# [sensation] //@SYN:     #62576# [feel]
    }

    //hard disk is corrupted
    DOMAIN(01.00:NORMAL)
    {
        LEMMA("most")
        >>
        ANCESTOR(92628,85321,86631) //@SYN: #92628# [unreliable] //@SYN: #85321# [unreliable] //@SYN:    #86631# [fallible]
    }

    //known issue
    DOMAIN(01.00:LOW)
    {
        LEMMA("many","hard drive","motherboard","board","hard disk","known")
        <:2>
        LEMMA("issue","corruption","corrupt","failure")
    }

    //defective motherboard
    DOMAIN(01.00:LOW)
    {
        LEMMA("defective")
        <:2>
        LEMMA("hard drive","motherboard","board","hard disk","known","many")
    }

    //they could not resolve the issue
    DOMAIN(01.00:LOW)
    {
        LEMMA("not")
        <:2>
        LEMMA("resolve","solve")
    }

    //black screen of death
    DOMAIN(01.00:LOW)
    {
        LEMMA("screen")
        >>
        KEYWORD("of")
        >>
        LEMMA("death")
        OR
        KEYWORD("BSOD")
    }

    //inability to perform any simple task
    DOMAIN(01.00:LOW)
    {
        LEMMA("inability","unable")
        >>
        KEYWORD("to")
    }

    //not working
    DOMAIN(01.00:NORMAL)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:4>
        LEMMA("work","working")
    }

    //laptop is dead
    DOMAIN(01.00:NORMAL)
    {
        ANCESTOR(100011019,100000068)//@SYN: #100011019# [machine] //@SYN: #100000068# [computer]
        <:2>
        SYNCON(81965)//@SYN: #81965# [inanimate]
    }

    //it was missing parts
    DOMAIN(01.00:LOW)
    {
        LEMMA("missing","miss")
        <:2>
        SYNCON(115989253)//@SYN: #115989253# [component]
    }

    //the laptop had physical damage
    DOMAIN(01.00:LOW)
    {
        LEMMA("physical")
        <:2>
        ANCESTOR(34140)//@SYN: #34140# [damage]
    }

    //it kept having problems after repair
    DOMAIN(01.00:LOW)
    {
        LEMMA("keep")
        <:2>
        LEMMA("have")
        <:2>
        LEMMA("problem")
        AND NOT
        KEYWORD("another brand")
    }

    //It doesn't seem to be very durable nor reliable
    DOMAIN(01.00:LOW)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:4>
        SYNCON(191577)//@SYN: #191577# [very]
        <:4>
        LEMMA("durable","reliable")
    }

    //it's not reliable
    DOMAIN(01.00:LOW)
    {
        SYNCON(193096)//@SYN: #193096# [not]
        <:5>
        LIST(85314:1,102689057:1)//@SYN: #85314# [reliable] //@SYN: #102689057# [reliability]
    }

    //unreliability
    DOMAIN(01.00:LOW)
    {
        LIST(22754:2)//@SYN: #22754# [unreliability]
    }

    //I don't trust them
    DOMAIN(01.00:LOW)
    {
		SYNCON(193096,193020,192700,193162,94068,194744)// # 193096: not, nae; 193020: never, ne'er;     192700: never; 193162: no, nope, nae, nah; 94068: no
        <:2>
        LIST(69074:2,68931:2,28026:2)//@SYN: #69074# [hope] //@SYN: #68931# [trust] //@SYN: #28026#      [faith]
    }

	//the issue isn't fixed
    DOMAIN(01.00:LOW)
	{
		SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er;        192700:   never; 193162: no, nope, nae, nah; 94068: no
		<:3>
		LEMMA("fix")
	}

	//I had to contact them again
	DOMAIN(01.00:LOW)
	{
		LEMMA("contact","call") + TYPE(VER:simple_past,VER:ed_form)
		<:2>
		KEYWORD("again")
	}

	//are you kidding me?
	DOMAIN(01.00:LOW)
	{
		TYPE(AUX,VER)
		>>
		TYPE(PRO) + KEYWORD("you")
		>>
		LEMMA("kid","joke") + TYPE(VER)
		>>
		KEYWORD("me")
		OR
		LEMMA("be") + TYPE(AUX,VER)
		>>
		LEMMA("kid","joke") + TYPE(VER)
		>>
		KEYWORD("me")
	}
}