// TOPIC MODELING
SCOPE SENTENCE
{	
    //Topic modeling
    DOMAIN(02.00)
    {
        ANCESTOR(3981) //@SYN: #3981# [information gathering]
    }

	//Topic modeling
    DOMAIN(02.00)
    {
        ANCESTOR(106031029)//@SYN: #106031029# [information center]
    }
	 
	//Topic modeling
    DOMAIN(02.00)
    {   
        SYNCON(33117,200292,70547,144353) - TYPE(VER:simple_past,VER:present_perfect,VER:ed_form)//@SYN: #33117# [request] //@SYN: #200292# [request] //@SYN: #70547# [request] //@SYN: #144353# [request]
        <-6:6>
        SYNCON(147972,38928)//@SYN: #147972# [information] //@SYN: #38928# [information]		  
    }
}

SCOPE SENTENCE
{
    //Heuristics
    DOMAIN(02.00)// I'm writing to ask for information about       
    {
        LEMMA("write")
        <:6>
        LEMMA("ask","ask for","request")
        >>
        !KEYWORD("that")
        AND
        LIST(100011028,33059,100038926:1)// # 100011028: information, inf., info; 33059:                 clarification, elucidation; 100038926: news, word, intelligence, int., tidings
    }
	
	//Heuristics
    DOMAIN(02.00)// I would like to receive information...
    {   
        TYPE(PRO)
        >>
		!TYPE(AUX)
        <:5>
        !SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er;               192700: never; 193162: no, nope, nae, nah; 94068: no
        <:5>
        LEMMA("like","want","need","have","must","receive","get","necessitate")
        <:5>
        !SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er; 192700:       never; 193162: no, nope, nae, nah; 94068: no
        <:5>
        !KEYWORD("my")
        <:2>
        LIST(100011028,33059)//# 100011028: information, inf., info; 33059: clarification, elucidation
    }

	//Heuristics
    DOMAIN(02.00:LOW)// This group needs some clarifications
	{
        !SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er;           192700: never; 193162: no, nope, nae, nah; 94068: no
        <:3>
        !KEYWORD("you")
        >>
        LEMMA("need","necessitate","want")
        <:3>
        LIST(100011028,33059)//# 100011028: information, inf., info; 33059: clarification, elucidation
    }

    //Heuristics
    DOMAIN(02.00:LOW)// I would like to know something about
    {
        TYPE(PRO) - KEYWORD("you")
        >>
        TYPE(AUX)
        >>
        LEMMA("like","want","need","have","must","receive","get")
        <:4>
        LEMMA("know","inform","informed","information","info","inf.")
    }

	//Topic & List
    DOMAIN(02.00)// I would appreciate the information
    {
        SYNCON(73939,68541)// # 73939: appreciate; 68541: appreciate
        <:5>
        LIST(100011028,33059)//# 100011028: information, inf., info; 33059: clarification, elucidation
    }

    //Heuristics
    DOMAIN(02.00:HIGH)// Thanks for your information
    {
        LEMMA("thank","thanks")
        <:9>
        LEMMA("information","info")
    }

    //Heuristics
    DOMAIN(02.00:LOW)// The important question is...
    {
		TYPE(ADJ)
		>>
		LEMMA("question")
		>>
		KEYWORD("is","now")
    }

	//Heuristics
	DOMAIN(02.00:LOW) // Could you please help me?
	{
		TYPE(AUX)
		<:2>
		TYPE(PRO)
		<:5>
		!SYNCON(193096,193020,192700,193162,94068) // # 193096: not, nae; 193020: never, ne'er;          192700: never; 193162: no, nope, nae, nah; 94068: no
		<:5>
		LIST(4960,4983,102509280,4139,4962,139857,145566,139854,4976,4969,176454,193782,279275,100707748,100865909,202355,306994,77158:3,71075:0) // # 4960: help, aid, assistance, helping, assist; 4983: support; 102509280: advocacy; 4139: supporting, support; 4962: helping hand, hand; 139857: professional help; 145566: clue; 139854: professional advice; 4976: boost, encouragement, leg up, leg; 4969: lift; 176454: aiding; 193782: easement; 279275: teaching assistantship; 100707748: legal aid; 100865909: development aid; 202355: adoption assistance; 306994: radar assistance; 77158: aid, assist //@SYN: #71075# [provide]
		AND
		ANCESTOR(100011024,100049848,38928,147972,101775867) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option]
	}
}

SCOPE SENTENCE*3
{
    //Heuristics
    DOMAIN(02.00:LOW) // Could you please tell me something more about these e-mail?
    {
        TYPE(AUX)
        >>
        TYPE(PRO)
        <:6>
        LEMMA("send","tell","inform","suggest")
        >>
        TYPE(PRO)
        AND
        ANCESTOR(100011024,100049848,38928,147972,101775867,26938,168723,69326,67112:1,66856:1) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option] //@SYN: #26938# [solution] //@SYN: #168723# [solve] //@SYN: #69326# [continue] //@SYN: #67112# [fix] //@SYN: #66856# [correct]
    }

    //Heuristics
    DOMAIN(02.00:LOW)// I would be grateful if you could send me more information
    {
		KEYWORD("if")
		>>
		TYPE(PRO) + KEYWORD("you")
		>>
        TYPE(AUX) + KEYWORD("could","would","would be")
    	>>
		TYPE(VER)
		AND
		ANCESTOR(100011024,100049848,38928,147972,101775867) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option]
    }
}

SCOPE SENTENCE*2
{
    DOMAIN(02.00:LOW)
    {
        TYPE(PRO,ADV)+KEYWORD("how","what")
        <:2>
        LEMMA("be")+TYPE(VER,AUX)
        <:2>
        LIST(23060,24910) //@SYN: #23060# [difference] //@SYN: #24910# [advantage]
        AND
        ANCESTOR(100011024,100049848,38928,147972,101775867) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option]
    }
}

SCOPE SENTENCE*2
{
    DOMAIN(02.00:LOW)
    {
        LEMMA("let")
        >>
        TYPE(PRO)
        >>
        LEMMA("know")
        AND
        ANCESTOR(38928:1,147972,101775867) //@SYN: #38928# [information] //@SYN: #147972#                [information] //@SYN: #101775867# [option]
    }
}
