BEGIN ~SKULLKIM~


IF ~Global("skullfin","GLOBAL",0)~ THEN BEGIN 0
SAY @0
IF ~InParty("Kim")~ THEN GOTO 1
IF ~!InParty("Kim")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1
SAY @1
IF ~~ THEN EXTERN KIMJ skullkim0
END

IF ~~ THEN BEGIN 2
SAY @2
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
SAY @3
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
SAY @4
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
SAY @5
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
SAY @6
IF ~~ THEN REPLY @7 GOTO 9
IF ~~ THEN REPLY @8 GOTO 8
IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 7
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
SAY @11
IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9
SAY @12
IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
SAY @13
IF ~~ THEN REPLY @8 GOTO 12
IF ~~ THEN REPLY @14 GOTO 11
IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 11
SAY @16
IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12
SAY @17
IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
SAY @18
IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
SAY @19
IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
SAY @20
IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
SAY @21
IF ~~ THEN REPLY @22 GOTO 19
IF ~~ THEN REPLY @23 GOTO 18
IF ~~ THEN REPLY @24 GOTO 17
IF ~IsValidForPartyDialog("Kim")~ THEN EXTERN KIMJ skullkim1
END

IF ~~ THEN BEGIN 17
SAY @25
IF ~~ THEN DO ~SetGlobal("skullnon","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18
SAY @26
IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19
SAY @27
IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
SAY @28
IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 21
SAY @30
IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
SAY @31
IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
SAY @32
IF ~~ THEN REPLY @33 GOTO 24
IF ~~ THEN REPLY @34 GOTO 17
END

IF ~~ THEN BEGIN 24
SAY @35
IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
SAY @36
IF ~~ THEN DO ~SetGlobal("skullfin","GLOBAL",1)~ EXIT
END


IF ~Global("skullfin","GLOBAL",4)~ THEN BEGIN 26
SAY @37
IF ~~ THEN DO ~SetGlobal("skullnon","GLOBAL",1)
SetGlobal("skullfin","GLOBAL",0)~ EXIT
END

IF ~Global("skullfin","GLOBAL",7)
PartyHasItem("urnekim")~ THEN BEGIN 27
SAY @38
IF ~~ THEN DO ~SetGlobal("skullfin","GLOBAL",10)~ EXIT
END

IF ~Global("skullfin","GLOBAL",12)~ THEN BEGIN 28
SAY @39
IF ~~ THEN REPLY @40 GOTO 30
IF ~~ THEN REPLY @41 GOTO 35
IF ~~ THEN REPLY @42 GOTO 29
END

IF ~~ THEN BEGIN 29
SAY @43
IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 30
SAY @44
IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
SAY @45
IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
SAY @46
IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
SAY @47
IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
SAY @48
IF ~~ THEN REPLY @49 GOTO 37
IF ~~ THEN REPLY @50 GOTO 36
END

IF ~~ THEN BEGIN 35
SAY @51
IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 36
SAY @52
IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37
SAY @52
IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 38
SAY @53
IF ~~ THEN DO ~SetGlobal("skullfin","GLOBAL",13)~ EXIT
END

IF ~~ THEN BEGIN 39
SAY @54
IF ~~ THEN DO ~SetGlobal("skullfin","GLOBAL",14)~ EXIT
END


APPEND KIMJ

IF ~~ THEN BEGIN skullkim0
SAY @55
IF ~~ THEN EXTERN SKULLKIM 3
END

IF ~~ THEN BEGIN skullkim1
SAY @56
IF ~~ THEN REPLY @22 EXTERN SKULLKIM 19
IF ~~ THEN REPLY @23 EXTERN SKULLKIM 18
IF ~~ THEN REPLY @24 EXTERN SKULLKIM 17
END
END
