SCOPE SENTENCE
{
    //Extraction of companies
    IDENTIFY(Companies)
    {
        @Company[ANCESTOR(104830453)+TYPE(NPR)-KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        !ANCESTOR(102424752)+TYPE(NPR) //@SYN: #102424752# [products]
    }

    //Extraction of companies and products
    IDENTIFY(Companies)
    {
        SYNCON(UNKNOWN)-TYPE(NPH,NOU,PRO) //@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        TYPE(PRE)+KEYWORD("from","by")
        >>
        @Company[ANCESTOR(104830453)+TYPE(NPR)-KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
    }

    //Extraction of companies and products
    IDENTIFY(Companies)
    {
        @Company[ANCESTOR(104830453)+TYPE(NPR)-KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        LEMMA("model")
        >>
        TYPE(NPR)+SYNCON(UNKNOWN) //@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
    }

    //Extraction of companies and products
    IDENTIFY(Companies)
    {
        @Company[ANCESTOR(104830453)+TYPE(NPR)-KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        TYPE(NPR)+SYNCON(UNKNOWN) //@SYN: #102424752# [products] //@SYN: #100011019# [machine] //@SYN: #100000068# [computer] //@SYN: #18178# [product]
        >>
        ANCESTOR(102424752)+TYPE(NOU) //@SYN: #102424752# [products]
    }

    //Extraction of companies and products [tokens combination]
    IDENTIFY(Companies)
    {
        @Company[ANCESTOR(104830453)+TYPE(NPR)-KEYWORD("i5","i7","i3")]|[TEXT] //@SYN: #104830453# [company]
        >>
        ANCESTOR(102424752)+TYPE(NPR) //@SYN: #102424752# [products]
        >>
        PATTERN("[0-9]+")
    }

}
