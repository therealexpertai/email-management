SCOPE SENTENCE
{
    //Extraction of products
    IDENTIFY(Products)
    {
        !ANCESTOR(102424752)+TYPE(NOU) //@SYN: #102424752# [products]
        >>
        @Product[ANCESTOR(102424752)+TYPE(NPR)] //@SYN: #102424752# [products]
        >>
        !PATTERN("[0-9]+")
        <:2>
        !ANCESTOR(102424752)+TYPE(NOU) //@SYN: #102424752# [products]
    }

    //Extraction of products
    IDENTIFY(Products)
    {
        ANCESTOR(102424752)+TYPE(NOU) //@SYN: #102424752# [products]
        >>
        @Product[ANCESTOR(102424752)+TYPE(NPR)]|[SEQUENCE] //@SYN: #102424752# [products]
        >>
        !PATTERN("[0-9]+")
        <:2>
        !ANCESTOR(102424752)+TYPE(NOU) //@SYN: #102424752# [products]
    }

    //Extraction of products
    IDENTIFY(Products)
    {

        LIST(27674)//@SYN: #27674# [model]
        <-1:1>
        @Product[TYPE(NPR)-ANCESTOR(102424752)+SYNCON(UNKNOWN)] //@SYN: #102424752# [products]
    }

    //Extraction of products
    IDENTIFY(Products)
    {
        @Product[ANCESTOR(102424752)+TYPE(NPR)] //@SYN: #102424752# [products]
        >>
        ANCESTOR(102424752)+TYPE(NOU) //@SYN: #102424752# [products]
    }

    //Extraction of companies and products [tokens combination]
    IDENTIFY(Products)
    {
        ANCESTOR(104830453)+TYPE(NPR)-KEYWORD("i5","i7","i3") //@SYN: #104830453# [company]
        >>
        @Product[ANCESTOR(102424752)+TYPE(NPR)]|[#1] //@SYN: #102424752# [products]
        >>
        @Product[PATTERN("[0-9]+")]|[#2]
    }



    //Extraction of companies and products
    IDENTIFY(Products)
    {
        ANCESTOR(104830453) + TYPE(NPR) - KEYWORD("i5","i7","i3") //@SYN: #104830453# [company]
        >>
        @Product[TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        ANCESTOR(102424752) + TYPE(NOU)//@SYN: #102424752# [products]
    }

    //Extraction of companies and products
    IDENTIFY(Products)
    {
        ANCESTOR(104830453) + TYPE(NPR) - KEYWORD("i5","i7","i3") //@SYN: #104830453# [company]
        >>
        LEMMA("model")
        >>
        @Product[TYPE(NPR)+SYNCON(UNKNOWN)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }

    //Extraction of companies and products
    IDENTIFY(Products)
    {
        @Product[SYNCON(UNKNOWN) - TYPE(NPH,NOU,PRO)]//@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        TYPE(PRE)+KEYWORD("from","by")
        >>
        ANCESTOR(104830453) + TYPE(NPR) - KEYWORD("i5","i7","i3") //@SYN: #104830453# [company]
    }

    //Extraction of products
    IDENTIFY(Products)
    {
        @Product[ANCESTOR(102424752) + TYPE(NPR)]//@SYN: #102424752# [products]
        <:4>
        ANCESTOR(102424752) + TYPE(NOU)//@SYN: #102424752# [products]
    }

}
