BEGIN ~Zven~

IF ~Global("pirateobjet","GLOBAL",0)~ THEN BEGIN 0
SAY @0
IF ~~ THEN EXTERN KIMJ zven0
END



IF ~~THEN BEGIN 1
SAY @1
IF ~~ THEN EXTERN KIMJ zven1
END

IF ~~THEN BEGIN 2
SAY @2
IF ~~ THEN EXTERN KIMJ zven2
END


IF ~~ THEN BEGIN 3
SAY @3
IF ~~ THEN EXTERN KIMJ zven3
END

IF ~~ THEN BEGIN 4
SAY @4
IF ~~ THEN EXTERN KIMJ zven4
END


IF ~~ THEN BEGIN 5
SAY @5
IF ~~ THEN EXTERN KIMJ zven5
END

IF ~~ THEN BEGIN 6
SAY @6
IF ~~ THEN REPLY @7 GOTO 8
IF ~~ THEN REPLY @8  EXTERN KIMJ zven6
END

IF ~~ THEN BEGIN 7
SAY @9
IF ~~ THEN DO ~ SetGlobal("pirateobjet","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN 8
SAY @10
IF ~~ THEN DO ~ SetGlobal("pirateobjet","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN 9
SAY @11
IF ~~ THEN EXIT
END

APPEND KIMJ

IF ~~ THEN BEGIN zven0
SAY @12
IF ~~ THEN EXTERN ZVEN 1
END

IF ~~ THEN BEGIN zven1
SAY @13
IF ~~ THEN REPLY @14 EXTERN ZVEN 2
IF ~~ THEN REPLY @15 EXTERN ZVEN 2
IF ~~ THEN REPLY @16 EXTERN ZVEN 2
IF ~~ THEN REPLY @17 GOTO zven7
END

IF ~~THEN BEGIN zven2
SAY @18
IF ~~ THEN EXTERN ZVEN 3
END

IF ~~THEN BEGIN zven3
SAY @19
IF ~~ THEN EXTERN ZVEN 4
END

IF ~~THEN BEGIN zven4
SAY @20
IF ~~ THEN EXTERN ZVEN 5
END

IF ~~THEN BEGIN zven5
SAY @21
IF ~~ THEN REPLY @22 EXTERN ZVEN 6
IF ~~ THEN REPLY @23 GOTO zven6
IF ~~ THEN REPLY @24 EXTERN ZVEN 6
IF ~~ THEN REPLY @25 EXTERN ZVEN 6
END

IF ~~THEN BEGIN zven6
SAY @26
IF ~~ THEN DO ~DestroyItem("helm30b")~ EXTERN ZVEN 7
END


IF ~~THEN BEGIN zven7
SAY @27
IF ~~ THEN DO ~LeaveParty()
SetGlobal("pirateobjet","GLOBAL",1)
GivePartyAllEquipment()
EscapeArea()~ EXIT
END
END