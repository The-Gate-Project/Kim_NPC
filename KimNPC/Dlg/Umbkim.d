BEGIN ~UMBKIM~

IF ~!InParty("Kim")~ THEN BEGIN 0 
  SAY @0 
  IF ~~ THEN REPLY @1  DO ~StartStore("ppumb01",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2  GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~InParty("Kim")~ THEN BEGIN 2 
  SAY @4
  IF ~Global("barbemort","GLOBAL",3)~ THEN EXTERN KIMJ kimumbquest
  IF ~!Global("barbemort","GLOBAL",3)~ THEN EXTERN KIMJ kimumbquest2
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~ Enemy() ~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN GOTO 4
END


APPEND KIMJ
  IF ~~ THEN BEGIN kimumbquest
    SAY @9
  IF ~~ THEN EXTERN UMBKIM 3
  END

  IF ~~ THEN BEGIN kimumbquest2
    SAY @10
    IF ~~ THEN EXTERN UMBKIM 5
  END
END




