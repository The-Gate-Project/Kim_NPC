//// RIBALD - MARCHE DE L'AVENTURE \\\\

INTERJECT_COPY_TRANS RIBALD 0 Kimribald1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @0
  == RIBALD     IF ~InParty("Kim")~ THEN 
  @1
   = @2
END


//// PREMIERS VERTIGES \\\\

EXTEND_BOTTOM Player1 3
     IF ~IsValidForPartyDialog("Kim")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN KIMJ KIMSLAYER1
END

APPEND KIMJ
  IF ~~ THEN BEGIN KIMSLAYER1
    SAY @3
    IF ~~ THEN REPLY @4 GOTO KIMSLAYER2
    IF ~~ THEN REPLY @5 GOTO KIMSLAYER3
    IF ~~ THEN REPLY @6 GOTO KIMSLAYER4
  END

  IF ~~ THEN BEGIN KIMSLAYER2
    SAY @7
    IF ~~ THEN  EXIT
  END

  IF ~~ THEN BEGIN KIMSLAYER3
    SAY @8
    IF ~~ THEN  EXIT
  END

  IF ~~ THEN BEGIN KIMSLAYER4
    SAY @9
    IF ~~ THEN  EXIT
  END
END

//// PREMIERE TRANSFORMATION \\\\

EXTEND_BOTTOM Player1 5
  IF ~InParty("KIM")~ THEN EXTERN KIMJ KIMSLAYER8
END


APPEND KIMJ

  IF ~~ THEN BEGIN KIMSLAYER8
    SAY @10
  = @11
  = @12
  COPY_TRANS Player1 5
  END
END


//// SECONDE TRANSFORMATION \\\\

EXTEND_BOTTOM PLAYER1 7
IF ~OR(2)
Global("KimRomanceActive","GLOBAL",1)
Global("KimRomanceActive","GLOBAL",2)
InParty("Kim")~ THEN EXTERN KIMJ KIMSLAYER5
END

EXTEND_BOTTOM PLAYER1 10
IF ~Global("SlayerAttacksKim","GLOBAL",1) Dead("Kim")~ THEN DO ~SetGlobal("SlayerAttacksKim","GLOBAL",0)~ GOTO 12
IF ~Global("SlayerAttacksKim","GLOBAL",1) !Dead("Kim")~ THEN DO ~SetGlobal("SlayerAttacksKim","GLOBAL",0)~ EXTERN KIMJ KIMSLAYER7
END	


APPEND KIMJ

  IF ~~ THEN BEGIN KIMSLAYER5
    SAY @13
    IF ~~ THEN REPLY @14 GOTO KIMSLAYER6
    IF ~~ THEN REPLY @15 GOTO KIMSLAYER6
    IF ~~ THEN REPLY @16 GOTO KIMSLAYER6
  END

  IF ~~ THEN BEGIN KIMSLAYER6
    SAY @17
    IF ~~ THEN DO ~SetGlobal("SlayerAttacksKim","GLOBAL",1) 
                   ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
                   ActionOverride(Player1,Attack("Kim"))~ EXIT
  END

  IF ~~ THEN BEGIN KIMSLAYER7
    SAY @18
       =@19    
    IF ~~ THEN EXIT
  END

END


///// PREMIERE MORT D'IRENICUS \\\\

INTERJECT_COPY_TRANS Player1 16 KimIrenicus1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @20
END


INTERJECT_COPY_TRANS Player1 25 KimIrenicus2
  == KIMJ   IF ~InParty("KIM")
!Global("KimRomanceActive","GLOBAL",2)~ THEN 
  @21
END

INTERJECT_COPY_TRANS Player1 25 KimIrenicus3
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",2)~ THEN 
  @22
END

//// TREE OF LIFE \\\\



EXTEND_BOTTOM Player1 33
IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",2)~ THEN GOTO KIMTREE1
END

EXTEND_BOTTOM Player1 33 
IF ~InParty("KIM")
!Global("KimRomanceActive","GLOBAL",2)~ THEN GOTO KIMTREE2
END

APPEND Player1
  IF ~~ THEN BEGIN KIMTREE1
    SAY @23
    = @24
    IF ~~ THEN EXTERN KIMJ KIMARBRE1
  END

  IF ~~ THEN BEGIN KIMTREE2
    SAY @25
    IF ~~ THEN REPLY @26 EXTERN KIMJ KIMARBRE2
    IF ~~ THEN REPLY @27 EXTERN KIMJ KIMARBRE2
    IF ~~ THEN REPLY @28 EXTERN KIMJ KIMARBRE2
  END

  IF ~~ THEN BEGIN KIMTREE3
    SAY @29
    COPY_TRANS PLAYER1 25
    END

END

APPEND KIMJ
  IF ~~ THEN BEGIN KIMARBRE1
    SAY @30
    IF ~~ THEN EXTERN Player1 KIMTREE3
  END

  IF ~~ THEN BEGIN KIMARBRE2
    SAY @31
    COPY_TRANS PLAYER1 25
  END
END


//// ARAN LIVAIL ENNEMI \\\\

INTERJECT_COPY_TRANS ARAN02 0 KimAran1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @32
  == ARAN02 IF ~InParty("KIM")~ THEN
  @33
END

//// ARAN LIVAIL  \\\\

INTERJECT_COPY_TRANS ARAN 0 KimAran
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @34
  == ARAN   IF ~InParty("KIM")~ THEN
  @35
  = @36 
END

INTERJECT_COPY_TRANS ARAN 49 KimAran2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @37
END

INTERJECT_COPY_TRANS ARAN 51 KimAran3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @38
END

INTERJECT_COPY_TRANS ARAN 53 KimAran4
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @39
END

INTERJECT_COPY_TRANS ARAN 77 KimAran5
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @40
END

INTERJECT_COPY_TRANS ARAN 92 KimAran5
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @41
END


//// MAGE VS BODHI1 \\\


INTERJECT_COPY_TRANS ARNFGT06 0 Kimarfgt
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @42
END

//// BARL (quête de Mazzy) \\\

INTERJECT_COPY_TRANS BARL 0 Kimbarl
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @43
END

//// BARON PLOYER (Jaheira) \\\

INTERJECT_COPY_TRANS BARONP 8 Kimbaronp
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @44
  == BARONP IF ~InParty("KIM")~ THEN
@45

END

INTERJECT_COPY_TRANS BARONP 13 Kimbaronp1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @46
  == BARONP IF ~InParty("KIM")~ THEN
@47
END

INTERJECT_COPY_TRANS BARONP 15 Kimbaronp
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @48
END

//// DOMPTEUR \\\\

INTERJECT_COPY_TRANS BEAST 0 Kimbeast
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @49
END

//// OEIL AVEUGLE \\\\

INTERJECT_COPY_TRANS BHEYE 0 Kimoeil
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @50
END


//// PRETRE DE HELM \\\\


INTERJECT_COPY_TRANS BHOISIG 3 Kimbhoisig
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @51
  == BHOISIG IF ~InParty("KIM")~ THEN
  @52
END

INTERJECT_COPY_TRANS BHOISIG 11 Kimbhoisig2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @53
  == BHOISIG IF ~InParty("KIM")~ THEN
  @54
END

INTERJECT_COPY_TRANS BHOISIG 33 Kimbhoisig3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @55
END

//// VALEN \\\\

INTERJECT_COPY_TRANS BOANASTE 5 Kimvalen
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @56
END

//// VALEN \\\\

INTERJECT_COPY_TRANS BOANASTE 5 Kimvalen
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @56
END


//// BODHI CHAP3 \\\\

INTERJECT_COPY_TRANS BODHI2 5 Kimbodhi
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @57
END

INTERJECT_COPY_TRANS BODHI2 14 Kimbodhi2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @58
  == BODHI2 IF ~InParty("KIM")~ THEN
  @59
END

INTERJECT_COPY_TRANS BODHI2 24 Kimbodhi3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @60
END

//// BODHI CHAP 6 - ENLEVEMENT \\\\

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("KIM")
OR(2)
Global("KimRomanceActive","GLOBAL",1)
Global("KimRomanceActive","GLOBAL",2) ~ THEN GOTO KIMABDUCT1
END

APPEND BODHIAMB

  IF ~~ THEN BEGIN KIMABDUCT1
    SAY @61
    IF ~OR(2)
    !InPartyAllowDead("Kim")
    Dead("Kim") ~ THEN GOTO 6
    IF ~InPartyAllowDead("Kim")
    !Dead("Kim") ~ THEN GOTO KIMABDUCT2
  END

  IF ~~ THEN BEGIN KIMABDUCT2
    SAY @62
    IF ~~ THEN EXTERN KIMJ KIMBODHI1
  END

  IF ~~ THEN BEGIN KIMABDUCT3
    SAY @63
  IF ~~ THEN DO ~ClearAllActions()
                 StartCutSceneMode()
                 StartCutScene("KimCut53")
                 ~ UNSOLVED_JOURNAL @400
                 EXIT
  END
END

APPEND KIMJ
  IF ~~ THEN BEGIN KIMBODHI1
    SAY @64
    IF ~~ THEN EXTERN BODHIAMB KIMABDUCT3 
  END
END

//// GARCON CIRQUE \\\\

INTERJECT_COPY_TRANS BOY1 0 Kimgamin
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @65
END

//// VISAJ (BREGAN) \\\\

INTERJECT_COPY_TRANS BREG01 7 Kimbreg1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @66
END

INTERJECT_COPY_TRANS BREG01 34 Kimbreg2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @67
END


//// BODHI - FINAL FIGHT \\\\

INTERJECT_COPY_TRANS C6BODHI 0 kimbodend
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @68
  == C6BODHI IF ~InParty("KIM")~ THEN
  @69
END

INTERJECT_COPY_TRANS C6BODHI 5 kimbodend
  == KIMJ   IF ~IfValidForPartyDialog("KIM")~ THEN 
  @70
END






//// DRIZZT \\\\

INTERJECT_COPY_TRANS C6DRIZZ1 39 Kimdrizzt
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @71
END

INTERJECT_COPY_TRANS C6DRIZZ1 37 Kimdrizzt2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @72
  == C6DRIZZ1 IF ~InParty("KIM")~ THEN
  @73

END

//// ELHAN \\\\

INTERJECT_COPY_TRANS C6ELHAN2 6 Kimelhan1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @74
END

INTERJECT_COPY_TRANS C6ELHAN2 24 Kimelhan1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @75
END

INTERJECT_COPY_TRANS C6ELHAN2 73 Kimelhan2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @76
END

//// MESSAGER ARAN \\\\

INTERJECT_COPY_TRANS C6MESS 3 Kimmess1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @77
END

//// CALAHAN \\\\

INTERJECT_COPY_TRANS CALAHA 0 Kimcalahan
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @78
  == CALAHA   IF ~InParty("KIM")~ THEN 
  @79
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @80
  == CALAHA   IF ~InParty("KIM")~ THEN 
  @81
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @82
  == CALAHA   IF ~InParty("KIM")~ THEN
  @83
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @84
  == CALAHA   IF ~InParty("KIM")~ THEN 
  @85
END

//// CARBOS \\\\

INTERJECT_COPY_TRANS CARBOS 2 Kimcarbos
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @86
END

//// DERIL \\\\

INTERJECT_COPY_TRANS CEDERIL 8 Kimderil
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @87
END


//// FALDORN \\\\

INTERJECT_COPY_TRANS CEFALDOR 2 Kimfaldorn
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @88
END


//// LOGAN \\\\

INTERJECT_COPY_TRANS CELOGAN 11 Kimlogan
  == KIMJ   IF ~InParty("KIM")~ THEN
  @89
END

//Problème avec le bloc d'instruction SetGlobal, EraseJournal entry et AddXPObjet
/*INTERJECT_COPY_TRANS2 CELOGAN 31 Kimlogan2
  == KIMJ   IF ~InParty("KIM")~ THEN
  @90
END*/

INTERJECT_COPY_TRANS CELOGAN 59 Kimlogan2
  == KIMJ   IF ~InParty("KIM")~ THEN
  @91
END


//// CELVAN \\\\



APPEND CELVAN

  IF WEIGHT #-1 ~See("Kim")
  InParty("Kim")
  !StateCheck("Kim",STATE_SLEEPING)
  RandomNum(2,1)
  Global("CelvanKim","AR0300",0) ~ THEN BEGIN Kimcelvan 
    SAY @92
    IF ~~ THEN DO ~SetGlobal("celvanKim","AR0300",1)~ EXTERN KIMJ CelvanKim
  END
END

APPEND KIMJ

  IF ~~ THEN BEGIN CelvanKim
    SAY @93
    IF ~~ THEN EXIT 
  END
END


//// MERE DANS QUARTIER TEMPLE \\\\

INTERJECT_COPY_TRANS CLMOM 5 Kimmom
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @94
END

//// PORTE DE LA SPHERE PLANAIRE \\\\

INTERJECT_COPY_TRANS CONPANEL 0 Kimconpanel
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @95
  == CONPANEL IF ~InParty("KIM")~ THEN
  @96
END

//// COR \\\\

INTERJECT_COPY_TRANS COR 12 Kimcor
  == KIMJ   IF ~InParty("KIM")~ THEN
  @97
  == ANOMENJ   IF ~InParty("KIM")~ THEN 
  @98
END

INTERJECT_COPY_TRANS COR 25 Kimcor2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @99
END

//// ROMEO & JULIETTE \\\\

INTERJECT_COPY_TRANS CROTHF01 3 Kimromeo
  == KIMJ   IF ~InParty("KIM")~ THEN
  @100
END

INTERJECT_COPY_TRANS CROTHF01 18 Kimromeo2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @101
END

//// GAAL \\\\

INTERJECT_COPY_TRANS CSGAAL 11 Kimgaal
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @102
END

//// TRAITRE GAAL \\\\

INTERJECT_COPY_TRANS CTRAITOR 2 Kimtraitre
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @103
END

//// ABOLETH \\\\

INTERJECT_COPY_TRANS DAABOL 9 Kimabol
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @104
END

//// MARCHAND D'ESCLAVES \\\\

INTERJECT_COPY_TRANS DADROW3 6 Kimdadr1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @105
END

//// PRETRESSE DROW \\\\

INTERJECT_COPY_TRANS DADROW17 3 Kimdadr2
  == KIMJ   IF ~InParty("KIM")~ THEN
  @106
END

//// DELCIA \\\\

INTERJECT_COPY_TRANS DELCIA 35 Kimdelcia
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @107
  == DELCIA   IF ~InParty("KIM")~ THEN 
  @108
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @109
END

//// DELON \\\\

INTERJECT_COPY_TRANS DELON 3 Kimdelon
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @110
END


INTERJECT_COPY_TRANS DELON 4 Kimdelon
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @110
END

//// DRAGON NOIR \\\\

INTERJECT_COPY_TRANS DRAGBLAC 0 Kimdragblac
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @111
END

//// ELGEA \\\\

INTERJECT_COPY_TRANS ELGEA 0 Kimelgea
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @112
END

INTERJECT_COPY_TRANS ELGEA 6 Kimelgea2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @113
END

//// THEATRE \\\\

INTERJECT_COPY_TRANS FFACTOR1 2 Kimffactor
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @114
END



//// LAQUAIS DE FIRKRAAG \\\\

INTERJECT_COPY_TRANS FIRBAN02 0 Kimfirban
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @115
END

//// FIRKRAAG HOMME \\\\

INTERJECT_COPY_TRANS FIRKRA01 5 Kimfirkra1
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @116
END

INTERJECT_COPY_TRANS FIRKRA01 9 Kimfirkra2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @117
  == FIRKRA01 IF ~InParty("KIM")~ THEN
  @118
END

//// FIRKRAAG DRAGON \\\\

INTERJECT_COPY_TRANS FIRKRA02 5 Kimfirkra3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @119
END

INTERJECT_COPY_TRANS FIRKRA02 21 Kimfirkra4
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @120
END

//// CUISINIER TROLL \\\\

INTERJECT_COPY_TRANS FIRTRL01 7 Kimfirtrl
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @121
  == FIRTRL01  IF ~InParty("KIM")~ THEN 
  @354
END

//// LOUPS GAROUS FIRKRAAG \\\\

INTERJECT_COPY_TRANS FIRWLF01 0 Kimfirwlf
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @122
END

//// GAAL \\\\

INTERJECT_COPY_TRANS GAAL 4 Kimgaal1
  == KIMJ   IF ~InParty("KIM")~ THEN
  @123
END

INTERJECT_COPY_TRANS GAAL 11 Kimgaal2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @124
END

INTERJECT_COPY_TRANS GAAL 23 Kimgaal3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @125
  == GAAL   IF ~InParty("KIM")~ THEN 
  @355
END

//// GARREN \\\\

INTERJECT_COPY_TRANS GARREN 2 Kimgarren
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @126
END

INTERJECT_COPY_TRANS GARREN 18 Kimgarren2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @127
END

//// PAYSAN GEMME \\\\

INTERJECT_COPY_TRANS GEMJEB01 0 Kimgemjeb
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @128
END

INTERJECT_COPY_TRANS GEMJEB01 10 Kimgemjeb2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @129
END

//// GERHAR (Jan) \\\\

INTERJECT_COPY_TRANS GERHAR 0 Kimgerhar
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @130
END

//// PHILOSOPHE PACIFISTE \\\\

INTERJECT_COPY_TRANS GPHIL01 3 Kimgphilo
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @131
END

//// HABIB \\\\

INTERJECT_COPY_TRANS HABIB 0 Kimhabib
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @132
END

//// HAEGAN \\\\

INTERJECT_COPY_TRANS HAEGAN 0 Kimhaegan
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @133
END

//// HENDAK \\\\

INTERJECT_COPY_TRANS HENDAK 1 Kimhendak
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @134
END

INTERJECT_COPY_TRANS HENDAK 18 Kimhendak
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @135
END

INTERJECT_COPY_TRANS HENDAK 30 Kimhendak
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @136
END

//// KANGAXX \\\\


INTERJECT_COPY_TRANS HLSKULL 8 Kimhldemi3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @137
END


INTERJECT_COPY_TRANS HLDEMI 0 Kimhldemi
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @138
END


INTERJECT_COPY_TRANS HLKANG 1 Kimhldemi2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @139
  == HLKANG IF ~InParty("KIM")~ THEN 
  @356
END

//// COMPOUND \\\\

INTERJECT_COPY_TRANS HLKETTA 0 Kimhlketta
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @140
END

//// TWISTED RUNE \\\\

INTERJECT_COPY_TRANS2 HLSHANG 4 Kimhlshang
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @141
END

INTERJECT_COPY_TRANS2 HLSHANG 7 Kimhlshang
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @141
END

//// KALAH \\\\

INTERJECT_COPY_TRANS KALAH2 13 Kimkalah
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @142
END

//// ESCLAVE NUE \\\\

INTERJECT_COPY_TRANS KSLAVE01 8 kimkslave
  == KIMJ   IF ~InParty("KIM")
Gender(Player1,"male")~ THEN 
  @143
END

//// LEHTINAN \\\\

INTERJECT_COPY_TRANS LEHTIN 8 kimklehtin
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @144
END

//// LUSETTE \\\\

INTERJECT_COPY_TRANS LUSETTE 15 kimlusette
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @145
END

//// MEKRATH \\\\

INTERJECT_COPY_TRANS MEKRAT 5 kimmekrat
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @146
END



//// MOOK \\\\

INTERJECT_COPY_TRANS MOOK 0 kimmook
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @147
  == MOOK   IF ~InParty("KIM")~ THEN 
  @148
END

INTERJECT_COPY_TRANS MOOK 15 kimmook2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @149
  == MOOK   IF ~InParty("KIM")~ THEN 
  @150

END

//// RAMPAH \\\\

INTERJECT_COPY_TRANS MURDBEGG 12 kimmurdbegg
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @151
END

//// ROSE \\\\

INTERJECT_COPY_TRANS MURDGIRL 0 kimmurdgirl
  == KIMJ   IF ~InParty("KIM")
Gender(Player1,"male")~ THEN 
  @152
END

//// NEEBER \\\\

INTERJECT_COPY_TRANS NEEBER 5 kimneeber
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @153
END

INTERJECT_COPY_TRANS NEEBER 10 kimneeber
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @154
END

//// CLAIRE \\\\

INTERJECT_COPY_TRANS PIRMUR10 4 kimclaire
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @155
END

//// ARAN BATEAU \\\\

INTERJECT_COPY_TRANS PPARAN2 0 kimpparan
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @156
END

//// BODHI BATEAU \\\\

INTERJECT_COPY_TRANS PPBODHI3 0 kimppbodhi
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @156
END

//// BODHI LABYRINTHE \\\\

INTERJECT_COPY_TRANS PPBODHI4 6 kimppbodhi2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @157
END

INTERJECT_COPY_TRANS PPBODHI4 20 kimppbodhi3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @158
  == PPBODHI4   IF ~InParty("KIM")~ THEN 
  @159
END

//// PERTH \\\\

INTERJECT_COPY_TRANS PPCOWLED 3 kimppcowled
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @160
  == PPCOWLED   IF ~InParty("KIM")~ THEN 
  @161
END

//// CHEF PIRATE \\\\

INTERJECT_COPY_TRANS PPDESH2 0 kimppdesh
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @162
END

//// IRENICUS ASILE \\\\

INTERJECT_COPY_TRANS PPIRENI2 1 kimirenicus
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @163
END

INTERJECT_COPY_TRANS PPIRENI2 31 kimirenicus2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @164
END

INTERJECT_COPY_TRANS PPIRENI2 47 kimirenicus3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @165
END

//// SAEMON \\\\

INTERJECT_COPY_TRANS PPSAEM2 0 kimsaemon
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @166
END

INTERJECT_COPY_TRANS PPSAEM2 19 kimsaemon2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @167
END

INTERJECT_COPY_TRANS PPSAEM3 1 kimsaemon3
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @168
END

INTERJECT_COPY_TRANS PPSAEM3 23 kimsaemon4
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @169
  == PPSAEM3 IF ~InParty("KIM")~ THEN 
@170
END

INTERJECT_COPY_TRANS PPSAEM3 37 kimsaemon5
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @171
END

INTERJECT_COPY_TRANS PPSAEM3 57 kimsaemon6
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @172
END


INTERJECT_COPY_TRANS PPSAEM 1 kimsaemon7
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @173
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @174
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @175
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @176
END

INTERJECT_COPY_TRANS PPSAEM 13 kimsaemon8
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @177
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @178
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @179
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @180
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @181
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @182

END

INTERJECT_COPY_TRANS PPSAEM 27 kimsaemon9
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @183
END

INTERJECT_COPY_TRANS PPSAEM 32 kimsaemon9
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @183
END

INTERJECT_COPY_TRANS PPSAEM 42 kimsaemon7
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @173
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @174
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @175
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @184
END

INTERJECT_COPY_TRANS PPSAEM 52 kimsaemon8
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @177
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @178
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @179
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @180
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @181
END

INTERJECT_COPY_TRANS PPSAEM 58 kimsaemon9
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @185
  == PPSAEM   IF ~InParty("KIM")~ THEN 
  @186
END

//// RAELIS \\\\

INTERJECT_COPY_TRANS RAELIS 9 kimraelis
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @187
END

INTERJECT_COPY_TRANS RAELIS 17 kimraelis2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @188
END

//// AVATAR D'AMAUNATOR \\\\

INTERJECT_COPY_TRANS RIFTCR04 0 kimriftcr
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @189
  == RIFTCR04 IF ~InParty("KIM")~ THEN 
  @353
END

INTERJECT_COPY_TRANS RIFTG03 7 kimriftg
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @190
END

INTERJECT_COPY_TRANS RIFTM01 11 kimriftm
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @191
END

INTERJECT_COPY_TRANS RIFTM01 12 kimriftm
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @192
END

//// ROI SAHUAGIN \\\\

INTERJECT_COPY_TRANS SAHKNG01 36 kimsahkng
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @193
END

INTERJECT_COPY_TRANS SAHKNG01 63 kimsahkng2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @194
END

//// PRINCE SAHUAGIN \\\\

INTERJECT_COPY_TRANS SAHPR2 6 kimsahpr
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @195
END

INTERJECT_COPY_TRANS SAHPR2 5 kimsahpr2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @196
END

//// SALVANAS \\\\


APPEND SALVANAS

  IF WEIGHT #-5 ~!InPartySlot(LastTalkedToBy,0)
  Name("Kim",LastTalkedToBy)
  ~ THEN BEGIN SALVANASKIM
    SAY @197
    IF ~~ THEN EXTERN KIMJ KIMSALVANAS
  END

  IF ~~ THEN BEGIN SALVANASKIM2
    SAY @198
    IF ~~ THEN EXTERN KIMJ KIMSALVANAS2
  END

  IF ~~ THEN BEGIN SALVANASKIM3
    SAY @199
    IF ~~ THEN EXTERN KIMJ KIMSALVANAS3
  END

END

APPEND KIMJ

  IF ~~ THEN BEGIN KIMSALVANAS
    SAY @200
    IF ~~ THEN EXTERN SALVANAS SALVANASKIM2
  END

  IF ~~ THEN BEGIN KIMSALVANAS2
    SAY @201
    IF ~~ THEN EXTERN SALVANAS SALVANASKIM3
  END

  IF ~~ THEN BEGIN KIMSALVANAS3
    SAY @202
    IF ~~ THEN EXIT
  END

END

//// SAMIA \\\\

INTERJECT_COPY_TRANS SAMIA 13 kimsamia
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @203
  == SAMIA   IF ~InParty("KIM")~ THEN 
  @204

END

INTERJECT_COPY_TRANS2 SAMIA 25 kimsamia2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @205
  == SAMIA   IF ~InParty("KIM")~ THEN 
  @357
END

//// SARLES \\\\

INTERJECT_COPY_TRANS SCSARLES 8 kimsarles
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @206
END

//// AVENTURIERS SEPT VAUX \\\\

INTERJECT_COPY_TRANS SEVPAT01 1 kimsevpat
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @207
END

INTERJECT_COPY_TRANS SEVPAT01 2 kimsevpat2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @208
END

//// DRAGON ARGENT \\\\

INTERJECT_COPY_TRANS UDSILVER 0 kimudsilver
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @209
END

INTERJECT_COPY_TRANS UDSILVER 14 kimudsilver2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @210
END

//// WAYLANE \\\\

APPEND WAYLANE 

  IF WEIGHT #-5~See("Kim")
InParty("Kim")
!StateCheck("Kim",STATE_SLEEPING)
RandomNum(2,1)
Global("waylanekim","LOCALS",0)~ THEN BEGIN WAYLANEKIM
    SAY @211
    IF ~~ THEN DO ~SetGlobal("waylanekim","LOCALS",1)~ EXTERN KIMJ KIMWAYLANE
  END

  IF ~~ THEN BEGIN WAYLANEKIM2
    SAY @212
    IF ~~ THEN EXTERN KIMJ KIMWAYLANE2
  END

  IF ~~ THEN BEGIN WAYLANEKIM3
    SAY @213
    IF ~~ THEN EXTERN KIMJ KIMWAYLANE3
  END

  IF ~~ THEN BEGIN WAYLANEKIM4
    SAY @214
    IF ~~ THEN EXIT
  END
END

APPEND KIMJ

  IF ~~ THEN BEGIN KIMWAYLANE
    SAY @215
    IF ~~ THEN EXTERN WAYLANE WAYLANEKIM2
  END

  IF ~~ THEN BEGIN KIMWAYLANE2
    SAY @216
    IF ~~ THEN EXTERN WAYLANE WAYLANEKIM3
  END

  IF ~~ THEN BEGIN KIMWAYLANE3
    SAY @217
    IF ~~ THEN EXTERN WAYLANE WAYLANEKIM4
  END
END


//// TANNEUR \\\\

INTERJECT_COPY_TRANS TANNER 7 kimtanneur
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @218
END

//// DRAGON D'OMBRE \\\\

INTERJECT_COPY_TRANS SHADRA01 0 kimshadrag
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @219
  == SHADRA01 IF ~InParty("KIM")~ THEN
  @351
END

//// ELHAN \\\\

INTERJECT_COPY_TRANS SUELHAN 2 kimsuelhan
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @220
END

//// ELLESIME \\\\

INTERJECT_COPY_TRANS SUELLEAP 7 kimsuellesime
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @221
  == SUELLEAP   IF ~InParty("KIM")~ THEN 
  @352
END

//// IRENICUS \\\\

INTERJECT_COPY_TRANS SUJON 14 kimsujon
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @222
  == SUJON  IF ~InParty("KIM")~ THEN 
  @358
END

//// AVENTURIERS EGOUTS \\\\

INTERJECT_COPY_TRANS TARNOR 1 kimtarnor
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @223
END

INTERJECT_COPY_TRANS TARNOR 4 kimtarnor
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @224
  == TARNOR   IF ~InParty("KIM")~ THEN 
  @225
END

//// THUMB \\\\

INTERJECT_COPY_TRANS THUMB 0 kimthumb
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @226
  == THUMB   IF ~InParty("KIM")~ THEN 
  @227
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @228
  == THUMB   IF ~InParty("KIM")~ THEN 
  @229
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @230
  == THUMB   IF ~InParty("KIM")~ THEN 
  @231
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @232
  == THUMB   IF ~InParty("KIM")~ THEN 
  @233
END

INTERJECT_COPY_TRANS THUMB 6 kimthumb
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @226
  == THUMB   IF ~InParty("KIM")~ THEN 
  @227
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @228
  == THUMB   IF ~InParty("KIM")~ THEN 
  @229
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @230
  == THUMB   IF ~InParty("KIM")~ THEN 
  @231
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @232
  == THUMB   IF ~InParty("KIM")~ THEN 
  @233
END

//// WILFRED LE ROUGE \\\\


EXTEND_BOTTOM TRPLE01 9
IF ~InParty("Kim")~ THEN EXTERN KIMJ KIMTRPLE
END

APPEND KIMJ

  IF ~~ THEN BEGIN KIMTRPLE
    SAY @234
    IF ~~ THEN EXTERN KIMTRPLE01 18
  END

END

//// ARDULACE \\\\

INTERJECT_COPY_TRANS UDARDUL 16 kimudardul
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @235
END

INTERJECT_COPY_TRANS UDARDUL 63 kimudardul2
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @236
  == UDARDUL IF ~InParty("KIM")~ THEN 
  @237
END

//// OGRE \\\\

INTERJECT_COPY_TRANS UDOGRE 6 kimudogre
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @238
  == UDOGRE   IF ~InParty("KIM")~ THEN 
  @239
END

//// SVIRNFELIN \\\\

INTERJECT_COPY_TRANS UDSVIR03 12 kimsvirn
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @240
END

//// PHAERE \\\\

INTERJECT_COPY_TRANS UDPHAE01 7 kimphae
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @241
END

INTERJECT_COPY_TRANS UDPHAE01 24 kimphae2
  == KIMJ   IF ~InParty("KIM")
Gender(Player1,"male")
!Global("KimRomanceActive","GLOBAL",2)~ THEN 
  @242
END

INTERJECT_COPY_TRANS UDPHAE01 24 kimphae2
  == KIMJ   IF ~InParty("KIM")
Gender(Player1,"male")
Global("KimRomanceActive","GLOBAL",2)~ THEN 
  @243
END

INTERJECT_COPY_TRANS UDPHAE01 61 kimphae3
  == KIMJ   IF ~InParty("KIM") ~ THEN 
  @244
END

INTERJECT_COPY_TRANS UDPHAE01 84 kimphae4
  == KIMJ   IF ~InParty("KIM") ~ THEN 
  @245
END

INTERJECT_COPY_TRANS UDPHAE01 84 kimphae4
  == KIMJ   IF ~InParty("KIM") ~ THEN 
  @245
END

EXTEND_BOTTOM UDPHAE01 106
IF ~Or(2)
Global("KimRomanceActive","GLOBAL",1)
Global("KimRomanceActive","GLOBAL",2)~ THEN REPLY @246 GOTO 110
END

//// SOLAFEIN \\\\

INTERJECT_COPY_TRANS UDSOLA01 38 kimsola
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @247
  == UDSOLA01 IF ~InParty("KIM")~ THEN 
  @248

END

INTERJECT_COPY_TRANS UDSOLA01 50 kimsola
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @249
END

INTERJECT_COPY_TRANS UDSOLA01 117 kimsola
  == KIMJ   IF ~InParty("KIM")~ THEN 
  @250
END


/// ROMANCES \\\


// AERIE

INTERJECT_COPY_TRANS BAERIE 130 kimaerie
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @251
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@252
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @253
END

INTERJECT_COPY_TRANS BAERIE 167 kimaerie2
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @254
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@255
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @256
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@257
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @258
END

INTERJECT_COPY_TRANS BAERIE 193 kimaerie3
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @259
END

INTERJECT_COPY_TRANS BAERIE 201 kimaerie4
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @260
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@261
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @262
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@263
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @264
END

INTERJECT BAERIE 240 kimaerie5
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @265
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@266
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @267
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@268
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @269
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@270
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @271
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@272
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @273
  == BAERIE IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@274
END KIMJ aeriechoice

APPEND KIMJ

  IF ~~ THEN BEGIN aeriechoice
    SAY @275
    IF ~~ THEN REPLY @276 GOTO aeriechoice1
    IF ~~ THEN REPLY @277 EXTERN BAERIE kimchoice
    IF ~~ THEN REPLY @278 GOTO aeriechoice2
  END

  IF ~~ THEN BEGIN aeriechoice1
    SAY @279
    IF ~~ THEN GOTO aeriechoice3
  END

  IF ~~ THEN BEGIN aeriechoice2
    SAY @280
    IF ~~ THEN REPLY @281 GOTO aeriechoice1
    IF ~~ THEN REPLY @282 EXTERN BAERIE kimchoice
  END

  IF ~~ THEN BEGIN aeriechoice3
    SAY @283
  IF ~~ THEN GOTO aeriechoice4
  END


  IF ~~ THEN BEGIN aeriechoice4
    SAY @284
  IF ~~ THEN DO ~ SetGlobal("KimRomanceActive","GLOBAL",3) ~ EXTERN BAERIE kimchoice2
  END

  IF ~~ THEN BEGIN aeriechoice5
    SAY @285
    IF ~~ THEN GOTO aeriechoice6
  END

  IF ~~ THEN BEGIN aeriechoice6
    SAY @286
    IF ~~ THEN EXIT
  END

END

APPEND BAERIE

  IF ~~ THEN BEGIN kimchoice
    SAY @287
    IF ~~ THEN GOTO kimchoice1
  END

  IF ~~ THEN BEGIN kimchoice1
    SAY @288
    IF ~~ THEN DO ~ SetGlobal("AerieRomanceActive","GLOBAL",3) ~ EXTERN KIMJ aeriechoice5
  END

  IF ~~ THEN BEGIN kimchoice2
    SAY @289
    IF ~~ THEN EXIT
  END
END



/// VICONIA


INTERJECT_COPY_TRANS BVICONI 32 kimvico
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @290
END

INTERJECT_COPY_TRANS BVICONI 62 kimvico1
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @291
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@292
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @293
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@294
END

INTERJECT_COPY_TRANS BVICONI 82 kimvico2
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @295
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@296
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @297
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@298
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @299
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@300

END

INTERJECT_COPY_TRANS BVICONI 93 kimvico3
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @301
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@302
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @303
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@304
END

INTERJECT BVICONI 96 kimvico4
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @305
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@306
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @307
  == BVICONI IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@308
END KIMJ vicochoice


APPEND KIMJ

  IF ~~ THEN BEGIN vicochoice
    SAY @309
    IF ~~ THEN REPLY @310 GOTO vicochoice1
    IF ~~ THEN REPLY @311 EXTERN BVICONI kimchoice
    IF ~~ THEN REPLY @312 GOTO vicochoice2
  END

  IF ~~ THEN BEGIN vicochoice1
    SAY @279
    IF ~~ THEN GOTO vicochoice3
  END

  IF ~~ THEN BEGIN vicochoice2
    SAY @313
    IF ~~ THEN REPLY @314 EXTERN BVICONI kimchoice
    IF ~~ THEN REPLY @315 GOTO vicochoice1
  END

  IF ~~ THEN BEGIN vicochoice3
    SAY @283
  IF ~~ THEN GOTO vicochoice4
  END


  IF ~~ THEN BEGIN vicochoice4
    SAY @316
  IF ~~ THEN DO ~ SetGlobal("KimRomanceActive","GLOBAL",3) ~ EXTERN BVICONI kimchoice2
  END

  IF ~~ THEN BEGIN vicochoice5
    SAY @317
    IF ~~ THEN GOTO vicochoice6
  END

  IF ~~ THEN BEGIN vicochoice6
    SAY @318
    IF ~~ THEN EXIT
  END

END

APPEND BVICONI

  IF ~~ THEN BEGIN kimchoice
    SAY @319
    IF ~~ THEN GOTO kimchoice1
  END

  IF ~~ THEN BEGIN kimchoice1
    SAY @320
    IF ~~ THEN DO ~ SetGlobal("ViconiaRomanceActive","GLOBAL",3) ~ EXTERN KIMJ vicochoice5
  END

  IF ~~ THEN BEGIN kimchoice2
    SAY @321
    IF ~~ THEN EXIT
  END
END


//// JAHEIRA


INTERJECT_COPY_TRANS BJAHEIR 147 kimjaheira
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @322
END

INTERJECT_COPY_TRANS BJAHEIR 168 kimjaheira1
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @323
  == BJAHEIR IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@324
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @325
  == BJAHEIR IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@326
END

INTERJECT_COPY_TRANS BJAHEIR 188 kimjaheira2
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @327
  == BJAHEIR IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@328
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @329
  == BJAHEIR IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@330
END

INTERJECT BJAHEIR 211 kimjaheira3
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @331
  == BJAHEIR IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@332
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @333
  == BJAHEIR IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@334
  == KIMJ   IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN 
  @335
  == BJAHEIR IF ~InParty("KIM")
Global("KimRomanceActive","GLOBAL",1)~ THEN
@336
END KIMJ jaheirachoice




APPEND KIMJ

  IF ~~ THEN BEGIN jaheirachoice
    SAY @337
    IF ~~ THEN REPLY @338 GOTO vicochoice1
    IF ~~ THEN REPLY @339 EXTERN BJAHEIR kimchoice
    IF ~~ THEN REPLY @340 GOTO jaheirachoice2
  END

  IF ~~ THEN BEGIN jaheirachoice1
    SAY @279
    IF ~~ THEN GOTO jaheirachoice3
  END

  IF ~~ THEN BEGIN jaheirachoice2
    SAY @341
    IF ~~ THEN REPLY @342 GOTO jaheirachoice1 
    IF ~~ THEN REPLY @343 EXTERN BJAHEIR kimchoice
  END

  IF ~~ THEN BEGIN jaheirachoice3
    SAY @283
  IF ~~ THEN GOTO jaheirachoice4
  END


  IF ~~ THEN BEGIN jaheirachoice4
    SAY @344
  IF ~~ THEN DO ~ SetGlobal("KimRomanceActive","GLOBAL",3) ~ EXTERN BJAHEIR kimchoice2
  END

  IF ~~ THEN BEGIN jaheirachoice5
    SAY @345
    IF ~~ THEN GOTO jaheirachoice6
  END

  IF ~~ THEN BEGIN jaheirachoice6
    SAY @346
    IF ~~ THEN GOTO jaheirachoice7
  END

  IF ~~ THEN BEGIN jaheirachoice7
    SAY @347
    IF ~~ THEN EXIT
  END

END

APPEND BJAHEIR

  IF ~~ THEN BEGIN kimchoice
    SAY @348
    IF ~~ THEN GOTO kimchoice1
  END

  IF ~~ THEN BEGIN kimchoice1
    SAY @349
    IF ~~ THEN DO ~ SetGlobal("JAHEIRaRomanceActive","GLOBAL",3) ~ EXTERN KIMJ jaheirachoice5
  END

  IF ~~ THEN BEGIN kimchoice2
    SAY @350
    IF ~~ THEN EXIT
  END
END
