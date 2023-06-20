%let pgm=utl-find-the-position-of-all-substrings-with-a-string-wps-sas-python-r;

Github
https://tinyurl.com/49hehfav
https://github.com/rogerjdeangelis/utl-find-the-position-of-all-substrings-with-a-string-wps-sas-python-r

Find the position of all substrings with a string wps sas python r

     1. SAS/WPS
        Richard DeVenezia <rdevenezia@GMAIL.COM>

     2. R perl regex
        Many other short solutions but a little Klingonese

     3. Python base
        Many other short solutions but a little Klingonese

SOAPBOX ON;
 I have picked R and Python solutions that seem clear to me.
 R and Python have many solutions, however most are unclear(like the Klingon language)
 The R and python solutions often use amazing packages.
 R tidtverse is an attempt to bring disparate functions under one umbrella
 Really do not understand the dominance of Python base. The exceptions is pakages..
 I think the  0 offset for arrays in Python is a big mistake.
 Zero has a clear meaning, not found, -1 is an odd condition for not found?
SOAPBOX OFF


/**************************************************************************************************************************/
/*  _                   _                                                                                                 */
/* (_)_ __  _ __  _   _| |_                                                                                               */
/* | | `_ \| `_ \| | | | __|                                                                                              */
/* | | | | | |_) | |_| | |_                                                                                               */
/* |_|_| |_| .__/ \__,_|\__|                                                                                              */
/*         |_|                                                                                                            */
/*                                                                                                                        */
/* Find the position of all substrings with a string wps sas python r                                                     */
/*                                                                                                                        */
/* substring = "ABC";                                                                                                     */
/* string    = "cdeABCefgABCjklmnABC" ;                                                                                   */
/*                                                                                                                        */
/*             _                                                                                                          */
/*  _ __ _   _| | ___  ___                                                                                                */
/* | `__| | | | |/ _ \/ __|                                                                                               */
/* | |  | |_| | |  __/\__ \                                                                                               */
/* |_|   \__,_|_|\___||___/                                                                                               */
/*                                                                                                                        */
/*                                                                                                                        */
/* RULES (first psition of ABC)                                                                                           */
/*                                                                                                                        */
/*    4    10      18                                                                                                     */
/*    |     |       |                                                                                                     */
/* 12345678901234567890                                                                                                   */
/* cdeABCefgABCjklmnABC"                                                                                                  */
/*                                                                                                                        */
/*              _               _                                                                                         */
/*   ___  _   _| |_ _ __  _   _| |_                                                                                       */
/*  / _ \| | | | __| `_ \| | | | __|                                                                                      */
/* | (_) | |_| | |_| |_) | |_| | |_                                                                                       */
/*  \___/ \__,_|\__| .__/ \__,_|\__|                                                                                      */
/*                 |_|                                                                                                    */
/*                                                                                                                        */
/* WPS System        07:51 Tuesday, June 20, 2023                                                                         */
/*                                                                                                                        */
/* POSITION =  4                                                                                                          */
/* POSITION = 10                                                                                                          */
/* POSITION = 18                                                                                                          */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*                      __
/ |    ___  __ _ ___   / /_      ___ __  ___
| |   / __|/ _` / __| / /\ \ /\ / / `_ \/ __|
| |_  \__ \ (_| \__ \/ /  \ V  V /| |_) \__ \
|_(_) |___/\__,_|___/_/    \_/\_/ | .__/|___/
                                  |_|
*/

data _null_;

 substring = "ABC";
 string = "cdeABCefgABCjklmnABC" ;

 /*----   Count down clock                                                ----*/
 position = -length(substring) + 1;

 if length(substring) <= length(string) then

     do until (position = 0);
     position = find(string,trim(substring), position+3);
     if position ne 0 then put position=;

 end;
 stop;
run;

%utl_submit_wps64('

data _null_;

 substring = "ABC";
 string = "cdeABCefgABCjklmnABC" ;

 /*----   Count down clock                                                ----*/
 position = -length(substring) + 1;

 if length(substring) <= length(string) then

     do until (position = 0);
     position = find(string,trim(substring), position+3);
     if position ne 0 then put position=;

 end;
 stop;
run;

');

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  The WPS System        08:08 Tuesday, June 20, 2023                                                                    */
/*                                                                                                                        */
/*  NOTE: AUTOEXEC processing completed                                                                                   */
/*                                                                                                                        */
/*  1         data _null_;                                                                                                */
/*  2         substring = "ABC";                                                                                          */
/*  3         string = "cdeABCefgABCjklmnABC";                                                                            */
/*  4         position = -length(substring) + 1;                                                                          */
/*  5         if length(substring) <= length(string) then do until (position = 0);                                        */
/*  6             position = find(string,trim(substring), position+3);                                                    */
/*  7            if position ne 0 then put position=;                                                                     */
/*  8          end;                                                                                                       */
/*  9         stop;                                                                                                       */
/*  10        run;                                                                                                        */
/*                                                                                                                        */
/*  POSITION=4                                                                                                            */
/*  POSITION=10                                                                                                           */
/*  POSITION=18                                                                                                           */
/*                                                                                                                        */
/*  NOTE: The data step took :                                                                                            */
/*        real time : 0.000                                                                                               */
/*        cpu time  : 0.000                                                                                               */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*___
|___ \     _ __   _ __ ___  __ _  _____  __
  __) |   | `__| | `__/ _ \/ _` |/ _ \ \/ /
 / __/ _  | |    | | |  __/ (_| |  __/>  <
|_____(_) |_|    |_|  \___|\__, |\___/_/\_\
                           |___/
*/

%symdel want / nowarn;

%utl_submit_r64('
want<-gregexpr("(?=ABC)","cdeABCefgABCjklmnABC",perl=TRUE);
paste(want,collapse = " ");
writeClipboard(paste(want));
',return=want);

%put &=want;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  R RETURNS A SAS MACRO VARIABLE WITH THE POSITIONS OF ABC                                                              */
/*                                                                                                                        */
/*  %put &=want;                                                                                                          */
/*                                                                                                                        */
/*  111   %put &=want;                                                                                                    */
/*                                                                                                                        */
/*  WANT=c(4, 10, 18)                                                                                                     */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*____                _   _                   _
|___ /    _ __  _   _| |_| |__   ___  _ __   | |__   __ _ ___  ___
  |_ \   | `_ \| | | | __| `_ \ / _ \| `_ \  | `_ \ / _` / __|/ _ \
 ___) |  | |_) | |_| | |_| | | | (_) | | | | | |_) | (_| \__ \  __/
|____(_) | .__/ \__, |\__|_| |_|\___/|_| |_| |_.__/ \__,_|___/\___|
         |_|    |___/
*/

%symdel want / nowarn;

%utl_submit_py64_310('
import pandas as pd;
import pyperclip;
from re import finditer;
want="";;
for match in finditer("ABC", "cdeABCefgABCjklmnABC"):;
.   havOne=str(match.span())[1:3];
.   want=want + havOne;
pyperclip.copy(want);
print(want);
',return=want);

%put "Positions based on Python 0 offset of ABC are " &=want;


/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  NOTE PYTHON USES A 0 OFFSET                                                                                           */
/*                                                                                                                        */
/*  SOAPBOX ON                                                                                                            */
/*    I think a 0 offset was a big mistake.                                                                               */
/*    0 has a clear meaning like, not found, -1 is an off condition                                                       */
/*  SOAPBOX OFF                                                                                                           */
/*                                                                                                                        */
/*  %put Positions based on Python 0 offset of ABC are &=want;                                                            */
/*                                                                                                                        */
/*  Positions based on Python 0 offset of ABC are WANT  =  3,9,17                                                         */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
