BEGIN ~Barbe2~

IF ~ NumTimesTalkedTo(0) ~ THEN BEGIN 0
SAY @0
IF ~~ THEN GOTO 1
END



IF ~~THEN BEGIN 1
SAY @1
IF ~~ THEN DO ~ SetGlobal("barbemort","GLOBAL",1)
Enemy() ~EXIT
END
