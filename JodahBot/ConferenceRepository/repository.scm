 
;  SYNERGY DATA LANGUAGE OUTPUT
;
;  REPOSITORY     : rpsmain.ism
;                 : rpstext.ism
;                 : Version 10.3.3b
;
;  GENERATED      : 03-MAR-2017, 17:38:44
;                 : Version 10.3.3b
;  EXPORT OPTIONS : [ALL] 
 
 
Enumeration FUNFACTTYPE
   Description "What type of fun fact is this"
   Members JOKE 1, FACT 2, OTHER 3

Structure EVENT   DBL ISAM
   Description "A specified block of time"
 
Field EVENTID   Type AUTOSEQ   Size 8
   Description "ID"
   Readonly
   Nonull
 
Field NAME   Type ALPHA   Size 250
   Description "Event name"
 
Field DATE   Type DATE   Size 8   Stored YYYYMMDD
   Description "Date of event"
 
Field STARTTIME   Type TIME   Size 4   Stored HHMM
   Description "Scheduled start time"
 
Field ENDTIME   Type TIME   Size 4   Stored HHMM
   Description "Scheduled end time"
 
Field DESCRIPTION   Type ALPHA   Size 10000
   Description "Description of event."
 
Key EVENTID   ACCESS   Order ASCENDING   Dups NO
   Segment FIELD   EVENTID  SegType SEQUENCE
 
Key NAME   ACCESS   Order ASCENDING   Dups YES
   Segment FIELD   NAME  SegType ALPHA
 
Key DATE   ACCESS   Order ASCENDING   Dups YES
   Segment FIELD   DATE  SegType DECIMAL
 
Key STARTTIME   ACCESS   Order ASCENDING   Dups YES
   Segment FIELD   STARTTIME  SegType DECIMAL
 
Structure PRESENTER   DBL ISAM
   Description "People giving the presentations"
 
Field PRESENTERID   Type AUTOSEQ   Size 8
   Description "ID"
   Readonly
   Nonull
 
Field FIRSTNAME   Type ALPHA   Size 20
   Description "The presenter's first name"
 
Field NICKNAME   Type ALPHA   Size 20
   Description "The presenter's nickname"
 
Field LASTNAME   Type ALPHA   Size 20
   Description "Presenter's last name"
 
Field TITLE   Type ALPHA   Size 64
   Description "Job title"
 
Field COMPANY   Type ALPHA   Size 32
   Description "Name of the presenter's company"
    
Field IMAGE   Type ALPHA   Size 100
   Description "URL for a picture of the presenter"
 
Field BIO   Type ALPHA   Size 10000
   Description "Brief biography"
 
Key PRESENTERID   ACCESS   Order ASCENDING   Dups NO
   Description "ID"
   Segment FIELD   PRESENTERID  SegType SEQUENCE
 
Key FIRSTNAME   ACCESS   Order ASCENDING   Dups YES
   Description "The presenter's first name"
   Segment FIELD   FIRSTNAME  SegType ALPHA

Key NICKNAME   ACCESS   Order ASCENDING   Dups YES
   Description "The presenter's nickname"
   Segment FIELD   NICKNAME  SegType ALPHA
 
Key LASTNAME   ACCESS   Order ASCENDING   Dups YES
   Description "Presenter's last name"
   Segment FIELD   LASTNAME  SegType ALPHA
  
Structure FUNFACT   DBL ISAM
   Description "Fun facts and jokes about presenters"
 
Field FUNID   Type AUTOSEQ   Size 8
   Description "ID"
   Readonly
   Nonull
 
Field PRESENTERID   Type INTEGER   Size 8
   Description "Presenter ID"
 
Field TYPE   Type ENUM   Size 4   Enum FUNFACTTYPE

Field TEXT   Type ALPHA   Size 10000
   Description "Text of joke or fact"
 
Key FUNID   ACCESS   Order ASCENDING   Dups NO
   Description "ID"
   Segment FIELD   PRESENTERID  SegType SEQUENCE
 
Key PRESENTERID   FOREIGN
   Description "Presenter's ID"
   Segment EXTERNAL   PRESENTER PRESENTERID
 
Relation  1   FUNFACT PRESENTERID   PRESENTER PRESENTERID
 
Structure JUNCTION   DBL ISAM
   Description "Junction between events & presenters"
 
Field EVENTID   Type INTEGER   Size 8
   Description "Event ID"
 
Field PRESENTERID   Type INTEGER   Size 8
   Description "Presenter ID"
 
Key KEY   ACCESS   Order ASCENDING   Dups NO
   Description "Primary key"
   Segment FIELD   EVENTID
   Segment FIELD   PRESENTERID
 
Key EVENTID   FOREIGN
   Description "Event ID"
   Segment EXTERNAL   EVENT EVENTID
 
Key PRESENTERID   FOREIGN
   Description "Presenter's ID"
   Segment EXTERNAL   PRESENTER PRESENTERID

File EVENTS   DBL ISAM   "EVENTS.ISM"
   Description "Events"
   Assign EVENT
 
File FUNFACTS   DBL ISAM   "FUNFACTS.ISM"
   Description "Fun facts"
   Assign FUNFACT
 
File JUNCTION   DBL ISAM   "JUNCTION.ISM"
   Description "Junction"
   Assign JUNCTION
 
File PRESENTERS   DBL ISAM   "PRESENTERS.ISM"
   Description "Presenters"
   Assign PRESENTER
 
