BEGIN ~Barbe~

IF ~ Global("barbepirate","LOCALS",0) ~ THEN BEGIN 0 
SAY @0 
IF ~~ THEN GOTO 1
END



IF ~~THEN BEGIN 1 
SAY @1 
IF ~~ THEN EXTERN KIMJ barbe0
END

IF ~~THEN BEGIN 2
SAY @2 
IF ~~ THEN REPLY @3 DO ~ SetGlobal("discusskim","LOCALS",1)~ GOTO 3
IF ~~ THEN REPLY @4 DO ~ SetGlobal("discusskim","LOCALS",1)~ GOTO 4
IF ~~ THEN REPLY @5 DO ~ SetGlobal("discusskim","LOCALS",1)~ GOTO 5
END


IF ~~ THEN BEGIN 3
SAY @6 
IF ~~ THEN DO ~SetGlobal("barbepirate","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 4
SAY @7 
IF ~~ THEN DO ~SetGlobal("barbespeech","LOCALS",2)~ EXTERN KIMJ barbe1
END


IF ~~ THEN BEGIN 5
SAY @8 
IF ~~ THEN REPLY @9 GOTO 3
IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 6
SAY @11 
IF ~~ THEN DO ~SetGlobal("barbespeech","LOCALS",2)
TakePartyGold(20000)
DestroyGold(20000)~ EXIT
END

IF ~ Global("barbepirate","LOCALS",2)~ THEN BEGIN 7
SAY @12 
IF ~~ THEN REPLY @3 GOTO 8
IF ~~ THEN REPLY @4 GOTO 4
IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8
SAY @13 
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
SAY @14 
IF ~~ THEN DO ~SetGlobal("barbespeech","LOCALS",1)~ EXTERN ZVEN 9
END


APPEND KIMJ


IF ~~THEN BEGIN barbe0
SAY @15
IF ~~ THEN REPLY @16 EXTERN BARBE 3
IF ~~ THEN REPLY @17 EXTERN BARBE 4 
IF ~~ THEN REPLY @18 EXTERN BARBE 5
END

IF ~~THEN BEGIN barbe1
SAY @19
IF ~~ THEN DO ~LeaveParty()
GivePartyAllEquipment()
EscapeArea()~ EXIT
END

IF ~Global("barbemort","GLOBAL",2)~THEN BEGIN barbe2
SAY @20
= @21
= @22
IF ~~ THEN GOTO barbe3
END

IF ~~THEN BEGIN barbe3
SAY @23
IF ~~ THEN DO ~DestroyItem("helm30b")
GiveItemCreate("cartbar","kim",1,0,0)
SetGlobal("barbemort","GLOBAL",3)~ EXIT
END

END
