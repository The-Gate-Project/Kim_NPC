APPEND HEARTG3


IF WEIGHT #-999 ~Global("skullnon","GLOBAL",0)
Global("skullfin","GLOBAL",2)~ THEN BEGIN skull0
SAY @0
  IF ~~ THEN REPLY @1  GOTO skull1
  IF ~~ THEN REPLY @2 GOTO skull2
  IF ~~ THEN REPLY @3  GOTO skull3
END

IF ~~ THEN BEGIN skull1
SAY @4
  IF ~~ THEN REPLY @5 GOTO skull5
  IF ~~ THEN REPLY @6 GOTO skull3
  IF ~~ THEN REPLY @7 GOTO skull4
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN skull2
SAY @9
  IF ~~ THEN REPLY @10 GOTO skull1
  IF ~~ THEN REPLY @11 GOTO skull3
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN skull3
SAY @13
  IF ~~ THEN REPLY @14 GOTO skull6
  IF ~~ THEN REPLY @15 GOTO skull13
  IF ~~ THEN REPLY @16 EXIT
END

IF ~~ THEN BEGIN skull4
SAY @17
  IF ~~ THEN REPLY @18 GOTO skull7
  IF ~~ THEN REPLY @19 GOTO skull8
  IF ~~ THEN REPLY @20 GOTO skull9
  IF ~~ THEN REPLY @16 EXIT
END

IF ~~ THEN BEGIN skull5
SAY @21
  IF ~~ THEN REPLY @22 GOTO skull10
  IF ~~ THEN REPLY @23 GOTO skull11
  IF ~~ THEN REPLY @24 EXIT
END

IF ~~ THEN BEGIN skull6
SAY @25
  IF ~~ THEN REPLY @26 GOTO skull9
  IF ~~ THEN REPLY @23 GOTO skull11
  IF ~~ THEN REPLY @27 GOTO skull13
  IF ~~ THEN REPLY @24 EXIT
END

IF ~~ THEN BEGIN skull7
SAY @28
  IF ~~ THEN REPLY @19 GOTO skull8
  IF ~~ THEN REPLY @20 GOTO skull9
  IF ~~ THEN REPLY @29 GOTO skull12
END

IF ~~ THEN BEGIN skull8
SAY @30
  IF ~~ THEN REPLY @31 GOTO skull8
  IF ~~ THEN REPLY @32 GOTO skull9
  IF ~~ THEN REPLY @29 GOTO skull12
END

IF ~~ THEN BEGIN skull9
SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN skull10
SAY @34
  IF ~~ THEN REPLY @26 GOTO skull9
  IF ~~ THEN REPLY @23 GOTO skull11
  IF ~~ THEN REPLY @27 GOTO skull13
  IF ~~ THEN REPLY @24 EXIT
END

IF ~~ THEN BEGIN skull11
SAY @35
  IF ~~ THEN REPLY @36 GOTO skull14
  IF ~~ THEN REPLY @37 GOTO skull15
  IF ~~ THEN REPLY @38 GOTO skull16
END

IF ~~ THEN BEGIN skull12
SAY @39
  IF ~~ THEN GOTO skull17
END

IF ~~ THEN BEGIN skull13
SAY @40
  IF ~~ THEN GOTO skull17
END

IF ~~ THEN BEGIN skull14
SAY @41
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN skull15
SAY @42
  IF ~~ THEN GOTO skull17
END

IF ~~ THEN BEGIN skull16
SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN skull17
SAY @44
  IF ~ReputationGT(Player1,14)~ THEN GOTO skull18
  IF ~ReputationGT(Player1,6)
ReputationLT(Player1,15)~ THEN GOTO skull19
  IF ~ReputationLT(Player1,7)~ THEN GOTO skull20
END

IF ~~ THEN BEGIN skull18
SAY @45
  IF ~~ THEN GOTO skull21
END

IF ~~ THEN BEGIN skull19
SAY @46
  IF ~~ THEN GOTO skull21
END

IF ~~ THEN BEGIN skull20
SAY @47
  IF ~~ THEN REPLY @48 GOTO skull22
  IF ~~ THEN REPLY @49 DO ~SetGlobal("skullfin","GLOBAL",4) ~ EXIT
END

IF ~~ THEN BEGIN skull21
SAY @50
  IF ~~ THEN GOTO skull23
END

IF ~~ THEN BEGIN skull22
SAY @51
  IF ~~ THEN DO ~
SetGlobal("skullfin","GLOBAL",5)
Shout(151)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN skull23
SAY @52
  IF ~~ THEN GOTO skull24
END

IF ~~ THEN BEGIN skull24
SAY @53
  IF ~~ THEN REPLY @54 GOTO skull22
  IF ~~ THEN REPLY @55 GOTO skull27
  IF ~~ THEN REPLY @56 GOTO skull26
  IF ~~ THEN REPLY @57 GOTO skull25
  IF ~~ THEN REPLY @58 DO ~SetGlobal("skullfin","GLOBAL",4) ~ EXIT
END

IF ~~ THEN BEGIN skull25
SAY @59
  IF ~~ THEN REPLY @54 GOTO skull22
  IF ~~ THEN REPLY @55 GOTO skull27
  IF ~~ THEN REPLY @56 GOTO skull26
  IF ~~ THEN REPLY @58 DO ~SetGlobal("skullfin","GLOBAL",4) ~ EXIT
END

IF ~~ THEN BEGIN skull26
SAY @60
  IF ~~ THEN REPLY @54 GOTO skull22
  IF ~~ THEN REPLY @55 GOTO skull27
  IF ~~ THEN REPLY @57 GOTO skull25
  IF ~~ THEN REPLY @58 DO ~SetGlobal("skullfin","GLOBAL",4) ~ EXIT
END

IF ~~ THEN BEGIN skull27
SAY @61
  IF ~~ THEN DO ~SetGlobal("skullfin","GLOBAL",3)~ EXIT
END

IF WEIGHT #-998 ~OR(2)
Global("skullfin","GLOBAL",3)
Global("skullfin","GLOBAL",6)
~ THEN BEGIN skull28
SAY @62
  IF ~Global("skullfin","GLOBAL",3)~ THEN REPLY @63 GOTO skull29
  IF ~Global("skullfin","GLOBAL",3)~ THEN REPLY @64 GOTO skull30
  IF ~Global("skullfin","GLOBAL",3)~ THEN REPLY @65 GOTO skull22
  IF ~Global("skullfin","GLOBAL",6)~ THEN REPLY @66 GOTO skull31
END

IF ~~ THEN BEGIN skull29
SAY @67
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN skull30
SAY @68
  IF ~~ THEN DO ~SetGlobal("skullfin","GLOBAL",4) ~ EXIT
END

IF ~~ THEN BEGIN skull31
SAY @69
  IF ~~ THEN DO ~SetGlobal("skullfin","GLOBAL",7)
GiveItemCreate("urnekim",player1,1,0,0)~ EXIT
END


END
