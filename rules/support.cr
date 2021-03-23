//TOPIC MODELING
SCOPE SENTENCE
{
    //Topic modeling
    DOMAIN(03.00)
    {
		!LIST(33117:2,29977)//# 33117: request, asking, qu, req.
  		<:3>
        ANCESTOR(321548,4995) //@SYN: #321548# [support service]//@SYN: #4995# [support]
 		<:3>
		!LIST(33117:2,29977)//# 33117: request, asking, qu, req.
    }

    //Topic modeling
    DOMAIN(03.00)
    {
		!LIST(33117:2,29977)//# 33117: request, asking, qu, req.
  		<:3>
        ANCESTOR(4960,24880,43766:0,147606) //@SYN: #4960# [help] //@SYN: #24880# [help] //@SYN:             #43766# [assistant] //@SYN: #147606# [help]
        <:3>
		!LIST(33117:2,29977)//# 33117: request, asking, qu, req.
    }

    //topic modeling
    DOMAIN(03.00)
    {
        ANCESTOR(200292) //@SYN: #200292# [request]
    }

    //topic modeling
    DOMAIN(03.00)
    {
        ANCESTOR(100366580)//@SYN: #100366580# [technical support]
    }

    //topic modeling
    DOMAIN(03.00:LOW)
    {
        ANCESTOR(100730920) //@SYN: #100730920# [problem solving]
    }

    //topic modeling
    DOMAIN(03.00:LOW)
    {
        !LEMMA("need")
        >>
        ANCESTOR(171193,77158)//@SYN: #171193# [urgent] //@SYN: #77158# [aid]
    }

    //Topic modeling
    DOMAIN(03.00:LOW)
    {
        ANCESTOR(101332193:0,101313852:0,85451,85925,200003,66940,71896,170842,170843,62070:2,26938,66884,77180,100029485,101332193,100029485)// # 101332193: error message; 101313852: error code; 85451: difficult, hard, toilsome; 85925: difficult; 200003: difficult; 66940: unlock; 71896: unlock; 170842: unlock; 170843: unlock; 62070: difficulty; 26938: solution, logical step; 66884: improve, amend, ameliorate, better, improve upon, meliorate; 77180: restore; 100029485: error, mistake, wrongdoing, fault, mistakenness, bad
	}
}

SCOPE SENTENCE*3
{
    //Topic Modeling
    DOMAIN(03.00:LOW)
    {
        ANCESTOR(101332193:0,101313852:0,85451,85925,200003,66940,71896,170842,170843,62070:2,26938,66884,77180,100029485,101332193,100029485)// # 101332193: error message; 101313852: error code; 85451: difficult, hard, toilsome; 85925: difficult; 200003: difficult; 66940: unlock; 71896: unlock; 170842: unlock; 170843: unlock; 62070: difficulty; 26938: solution, logical step; 66884: improve, amend, ameliorate, better, improve upon, meliorate; 77180: restore; 100029485: error, mistake, wrongdoing, fault, mistakenness, bad
        AND
        ANCESTOR(321548,4995,4960,24880,43766:0,147606,2611,26938,31181,101060653) //@SYN: #321548# [support service]//@SYN: #4995 # 321548: support service; 4995: support; 4960: help, aid, assistance, helping, assist; 24880: help, service, avail, svc.; 43766: assistant, helper, assister, help, succorer, asst., Assistant; 147606: help; 2611: effort, exertion, elbow grease, travail, sweat

    }
}

SCOPE SENTENCE
{	 
	//Topic Modeling & List
    DOMAIN(03.00:HIGH)
    {
		LIST(33117:2,29977)//# 33117: request, asking, qu, req.
		<:3>
        ANCESTOR(321548,4995,4960,24880,43766:0,147606) //@SYN: #321548# [support service]//@SYN: #4995# [support]
        <:3>
        !LIST(33117:2,29977)//# 33117: request, asking, qu, req.
    }

    //Topic Modeling & List
    DOMAIN(03.00:HIGH) //Support
    {
		!LIST(33117:2,29977)//# 33117: request, asking, qu, req.
		<:3>
        ANCESTOR(321548,4995,4960,24880,43766:0,147606) //@SYN: #321548# [support service]//@SYN: #4995# [support]
        <:3>
        LIST(33117:2,29977)//# 33117: request, asking, qu, req.
    }
}

SCOPE SENTENCE
{
	//Heuristics
	DOMAIN(03.00:LOW) // Could you please help me?
	{
		TYPE(AUX)
		>
		TYPE(PRO)
		<:5>
		!SYNCON(193096,193020,192700,193162,94068) // # 193096: not, nae; 193020: never, ne'er; 192700: never; 193162: no, nope, nae, nah; 94068: no
		<:5>
		LIST(4960,4983,102509280,4139,4962,139857,145566,139854,4976,4969,176454,193782,279275,100707748,100865909,202355,306994,77158:3) //# 4960: help, aid, assistance, helping, assist; 4983: support; 102509280: advocacy; 4139: supporting, support; 4962: helping hand, hand; 139857: professional help; 145566: clue; 139854: professional advice; 4976: boost, encouragement, leg up, leg; 4969: lift; 176454: aiding; 193782: easement; 279275: teaching assistantship; 100707748: legal aid; 100865909: development aid; 202355: adoption assistance; 306994: radar assistance; 77158: aid, assist
		AND NOT
		ANCESTOR(100011024,100049848,38928,147972,101775867) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option]
	}
    
	//Heuristics
	DOMAIN(03.00:LOW) //I ask for immediate help
	{
		!TYPE(AUX)
		>
		TYPE(PRO)
		<:2>
		!SYNCON(193096,193020,192700,193162,94068) // # 193096: not, nae; 193020: never, ne'er;      192700: never; 193162: no, nope, nae, nah; 94068: no
		<:2>
		LEMMA("ask","be","ask for","want","need","like","appreciate","necessitate","demand",         "require") 		- TYPE(VER:simple_past,VER:ed_form)
		<:5>
		!SYNCON(193096,193020,192700,193162,94068) // # 193096: not, nae; 193020: never, ne'er;      192700: never; 193162: no, nope, nae, nah; 94068: no
		<:5>
		LIST(4960,4983,102509280,4139,4962,139857,145566,139854,4976,4969,176454,193782,279275,100707748,100865909,202355,306994,77158)//# 4960: help, aid, assistance, helping, assist; 4983: support; 102509280: advocacy; 4139: supporting, support; 4962: helping hand, hand; 139857: professional help; 145566: clue; 139854: professional advice; 4976: boost, encouragement, leg up, leg; 4969: lift; 176454: aiding; 193782: easement; 279275: teaching assistantship; 100707748: legal aid; 100865909: development aid; 202355: adoption assistance; 306994: radar assistance; 77158: aid, assist
	}

	//Heuristics
	DOMAIN(03.00:LOW) // How can I do?
	{
		TYPE(ADV,PRO)
		<:3>
		LEMMA("can","should","must","have","may","think","believe","deal with")
		>>
		!ANCESTOR(293646) //# 293646: v. of linguistic communication generic, v. of verbal                   communication generic, v. generic linguistic communication verb, v. generic verbal                   communication verb
		<:5>
		LEMMA("do","solve","proceed","wrong","that","this","act","consider")
		>
		TYPE(PNT)+PATTERN("\?+","\?+\!+\??")
	}


	//Heuristics
	DOMAIN(03.00) // What's wrong?
	{
		TYPE(ADV,PRO)
		<:3>
		TYPE(AUX)-LEMMA("can","should","must","have","may","think","believe","deal with")
		>>
		!ANCESTOR(293646) //# 293646: v. of linguistic communication generic, v. of verbal               communication generic, v. generic linguistic communication verb, v. generic verbal communication     verb
		<:5>
		LEMMA("do","solve","proceed","wrong","that","this","act","consider")
		>
		TYPE(PNT)+PATTERN("\?+","\?+\!+\??")
	}

	//Heuristics
	DOMAIN(03.00) //What do I do with this? Why is it wrong? What is erroneus?
	{
		KEYWORD("what","why")
		<:5>
		LEMMA("do","be")
		<:3>
		LEMMA("wrong","erroneous","this")
	}
	 
	//Heuristics
	DOMAIN(03.00:LOW) // It doesn't work
	{
		TYPE(PRO)
		<:3>
		SYNCON(193096,193020,192700,193162,94068) // # 193096: not, nae; 193020: never,    ne'er; 192700:   never; 193162: no, nope, nae, nah; 94068: no
		<:3>
		ANCESTOR(72725,76576,26938) //# 72725: function, operate, work, run, behave, go;   76576: work
	}

    //Heuristics
    DOMAIN(03.00:LOW) // I have a problem
    {
        TYPE(PRO,ADV)
        <:2>
        !SYNCON(193096,193020,192700,193162,94068) // # 193096: not, nae; 193020: never,   ne'er; 192700: never; 193162: no, nope, nae, nah; 94068: no
        <:2>
        TYPE(AUX,VER:simple_present)+LEMMA("have","be")
        >>
        !SYNCON(193096,193020,192700,193162,94068) // # 193096: not, nae; 193020: never,   ne'er; 192700: never; 193162: no, nope, nae, nah; 94068: no
        <:3>
        LIST(62070:99,27550:99,101166625,31168,22915) // # 62070: difficulty; 27550:       issue, subject, topic, matter, bit //@SYN: #22915# [difficulty]
    }

    //Heuristics
    DOMAIN(03.00:LOW)// I did not find any solution - I don't find out how to solve this problem
    {
        TYPE(PRO)
        <:5>
        SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er; 192700:    never; 193162: no, nope, nae, nah; 94068: no
        <:5>
        LEMMA("find","find out")
        <:5>
        LEMMA("solution","solve")
    }

    //Heuristics                   
    DOMAIN(03.00:LOW)// I have not been able to solve the problem
    {
        SYNCON(193096) //@SYN: #193096# [not]
        <:4>
        LEMMA("able")
        <:4>
        LEMMA("solve","deal with")
        <:4>
        LEMMA("problem","solution")
    }

    //Heuristics
    DOMAIN(03.00:LOW)// I'm doing something wrong
    {
		LEMMA("do")
		>>
		LEMMA("something")
		>>
		LEMMA("wrong")
    }


	//Heuristics
    DOMAIN(03.00:LOW)
	{
		LEMMA("description")
		<-3:3>
		LEMMA("error")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// I tried all the possible combinations
    {
		TYPE(PRO) + KEYWORD("I")
		>>
		LEMMA("try")
		>>
		LEMMA("all")
    }

    //Heuristics
    DOMAIN(03.00)// Thanks for your support - I need your support
    {
        LEMMA("thank","thanks")
        <:6>
        LEMMA("support","help","effort")
    }

    //Heuristics
    DOMAIN(03.00:LOW)// This problem must be solved
    {
        LEMMA("problem")
        <:6>
        !SYNCON(193096,193020,192700,193162,94068)// # 193096: not, nae; 193020: never, ne'er;       192700:   never; 193162: no, nope, nae, nah; 94068: no
        <:5>
        LEMMA("solution","solve","resolution")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// I always get this error message
    {
	    LEMMA("always")
	    >>
	    LEMMA("get")
	    <:2>
        ANCESTOR(101332193:0,101313852:0,85451,85925,200003,66940,71896,170842,170843,62070:2,26938,66884,77180,100029485,101332193,100029485)// # 101332193: error message; 101313852: error code; 85451: difficult, hard, toilsome; 85925: difficult; 200003: difficult; 66940: unlock; 71896: unlock; 170842: unlock; 170843: unlock; 62070: difficulty; 26938: solution, logical step; 66884: improve, amend, ameliorate, better, improve upon, meliorate; 77180: restore; 100029485: error, mistake, wrongdoing, fault, mistakenness, bad
	}

    //Heuristics
    DOMAIN(03.00:LOW) //...could you have done
    {
	    LEMMA("can")
	    >>
	    TYPE(PRO)
	    >>
	    TYPE(AUX)
	    >>
	    LEMMA("do")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// How could it be improved?
    {
		LEMMA("how")
		>>
		TYPE(AUX)
		<:4>
		ANCESTOR(66884)//# 66884: improve, amend, ameliorate, better, improve upon, meliorate
	}

    //Heuristics
    DOMAIN(03.00:LOW)// It is something you are able to do
    {
		TYPE(PRO)
		>>
		LEMMA("be") + TYPE(VER)
		<:3>
		KEYWORD("to")
		>>
		LEMMA("do") + TYPE(VER)
	}

    //Heuristics
    DOMAIN(03.00:LOW)// Where is the problem
    {
		KEYWORD("where")
		>>
		LEMMA("be") + TYPE(VER)
		<:2>
		ANCESTOR(62070,22915)// # 62070: difficulty; 22915: difficulty, difficultness, troublousness
	}

    //Heuristics
    DOMAIN(03.00:NORMAL)// Could you give me support?
    {
		LEMMA("can","do")
		>>
		TYPE(PRO)
		>>
		LEMMA("give","have")
		<:2>
        ANCESTOR(321548,4995,4960,24880,147606,26938,31181,4983) //@SYN: #321548# [support service]//@SYN: #4995 # 321548: support service; 4995: support; 4960: help, aid, assistance, helping, assist; 24880: help, service, avail, svc.; 147606: help; 26938: solution, logical step; 31181: instruction, direction, instr.; 4983: support
	}

    //Heuristics
    DOMAIN(03.00:NORMAL)
    {
		PATTERN("process")
		<-5:5>
		LEMMA("ticket")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// I can't figure it out
    {
		LEMMA("can")
		>>
		SYNCON(193096)//# 193096: not, nae
		>>
		LEMMA("figure","figure out")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// ...to fix this bug
    {
		LEMMA("fix")
		<:3>
		LEMMA("bug")
	}

    //Heuristics 
    DOMAIN(03.00:LOW)// I have tried without results
    {
		LEMMA("no","without")
		<:3>
		LEMMA("result")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// How can you do with these rules?
    {
		TYPE(ADV)
		>>
		LEMMA("can")
		>>
		TYPE(PRO)
		>>
		LEMMA("do","change")
		>>
		KEYWORD("now","with","to")
		<:6>
        TYPE(PNT)+PATTERN("\?")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// What do you mean?
    {
		TYPE(PRO)
		>>
		LEMMA("do")
		<:4>
        LEMMA("mean") + TYPE(VER)
		<>
        TYPE(PNT)+PATTERN("\?")
	}

    //Heuristics
    DOMAIN(03.00:LOW)
    {
		KEYWORD("what","how")
		<:3>
		LEMMA("now","next")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// Why can't I do it on my laptop?
    {
		KEYWORD("why")
		>>
		LEMMA("can")
		>>
		SYNCON(193096)//# 193096: not, nae
		>>
		TYPE(PRO) + KEYWORD("I")
		<>
        TYPE(PNT)+PATTERN("\?")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// Please send me...
    {
		LEMMA("please")
		>>
		LEMMA("send")
		>>
		TYPE(PRO)
	}

    //Heuristics
    DOMAIN(03.00:LOW)// Do you have any tip about...
    {
		LEMMA("do")
		>>
		TYPE(PRO)
		>>
		LEMMA("have")
		<:3>
		ANCESTOR(30679,27624,100011028:1)//# 30679: advice, tip; 27624: thought, idea; 100011028:            information, inf., info
		<>
        TYPE(PNT)+PATTERN("\?")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// ...give me an advice...
    {
		!LEMMA("have")
		>>
		LEMMA("give")
		>>
		TYPE(PRO)
		<:3>
		ANCESTOR(30679,27624,100011028:1)//# 30679: advice, tip; 27624: thought, idea; 100011028:        information, inf., info
	}

    //Heuristics
    DOMAIN(03.00:LOW)// ..can you explain..
    {
		LEMMA("can","ask")
		<:2>
		TYPE(PRO)
		<:2>
		LEMMA("explain")
	}

    //Heuristics
    DOMAIN(03.00:LOW)// I'm writing to (+ action)
    {
		TYPE(PRO)
		>>
		LEMMA("be")
		>>
		LEMMA("write")
		>>
		KEYWORD("to")
		>>
		ANCESTOR(113570)// # 113570: v. of activity, v. activity verb
    }

    //Heuristics
    DOMAIN(03.00:LOW)// I'm writing to request that...
    {
		TYPE(PRO)
		>>
		LEMMA("be")
		>>
		LEMMA("write")
		<:3>
		LEMMA("ask","request","apply","because","email","letter","message")
		>>
		KEYWORD("that")
    }

    //Heuristics
    DOMAIN(03.00:LOW)// Please activate my account
    {
	    LEMMA("please")
		>>
		ANCESTOR(111867)//# 111867: v. of action, v. action verb
	}
   
	//Heuristics
    DOMAIN(03.00:LOW)// I have requested that..
    {
		TYPE(PRO)
		>>
		TYPE(AUX)
		>>
		LEMMA("demand","request")
		>>
		KEYWORD("that")
    }

	//Heuristics
    DOMAIN(03.00:LOW)// How can I get the psw?
    {
		KEYWORD("how")
		<:2>
		LEMMA("can")
		<-1:1>
		TYPE(PRO)
		>>
		LEMMA("get")
	}

	//Heuristics
    DOMAIN(03.00:LOW)// Would it be possible to...
    {
		TYPE(VER,AUX)
		<:2>
		KEYWORD("it","this","that")
		<:3>
		LEMMA("possible")
		<:4>
		TYPE(PNT) + PATTERN("\?")
	}

	//Heuristics
    DOMAIN(03.00:LOW)// Need help!
    {
        LEMMA("need")
        >>
        ANCESTOR(171193,77158)//@SYN: #171193# [urgent] //@SYN: #77158# [aid]
    }

	//Heuristics
    DOMAIN(03.00:LOW)// appreciate if you could
    {
		LEMMA("appreciate","appreciated")
		<:2>
		KEYWORD("if")
		>>
		TYPE(PRO) + KEYWORD("you")
		>>
		TYPE(AUX,VER)
    }

	//Heuristics
    DOMAIN(03.00:LOW)// any help with this would be much appreciated
    {
		LEMMA("help")
		<:6>
		LEMMA("much")
		<:3>
		LEMMA("appreciate","appreciated")
    }
}


SCOPE PARAGRAPH
{
	//Heuristics
	DOMAIN(03.00:LOW) // Could you please tell me how to do this?
	{
		TYPE(AUX)
		>>
		TYPE(PRO)
		<:6>
		LEMMA("send","tell","inform","know")
		AND NOT
		ANCESTOR(100011024,100049848,38928,147972,101775867) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option]
	}


	//Heuristics
    DOMAIN(03.00:LOW)// I would be grateful if you could send me
    {
		KEYWORD("if")
		>>
		TYPE(PRO) + KEYWORD("you")
		>>
		TYPE(AUX)
		>>
		TYPE(VER)
		AND NOT
		ANCESTOR(100011024,100049848,38928,147972,101775867) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option]
   }

}


SCOPE SENTENCE*2
{

    DOMAIN(03.00:LOW)
    {
        TYPE(PRO,ADV) + KEYWORD("how","what")
        <:2>
        LEMMA("be") + TYPE(VER,AUX)
        <:2>
        LIST(23060,24910)//@SYN: #23060# [difference] //@SYN: #24910# [advantage]
		AND NOT
		ANCESTOR(100011024,100049848,38928,147972,101775867) //@SYN: #100011024# [communications] //@SYN: #100049848# [document] //@SYN: #38928# [information] //@SYN: #147972# [information] //@SYN: #101775867# [option]
	}
}

SCOPE SENTENCE*2
{
	//Heuristics
	DOMAIN(03.00:LOW) // How can I do this?
	{
		KEYWORD("how")
		<:2>
		LEMMA("can")
		<-1:1>
		TYPE(PRO)
		AND
		PATTERN("\?")+POSITION(END SENTENCE)
	}

	DOMAIN(03.00)
	{
		LEMMA("customer")
		>>
		LEMMA("support","service","care")
	}
}

SCOPE SENTENCE*2
{
	DOMAIN(03.00:LOW)
	{
		LEMMA("let")
		>>
		TYPE(PRO)
		>>
		LEMMA("know")
		AND
		ANCESTOR(31002,26938,168723,4995:1,68713,291781:0) //@SYN: #31002# [solution] //@SYN: #26938# [solution] //@SYN: #168723# [solve] //@SYN: #4995# [support] //@SYN: #68713# [solve] //@SYN: #291781# [do]
	}
}
