@echo off
set version=1.5
title MyCity %version%
color 0a

:set
set name=Easter
set lastname=Egg
set age=0
set city=Gratulacje!

set cenaminilotto=15
set iloscminilotto=0
set wygranaminilotto=0
set przegranaminilotto=0
set $minilotto=50

set cenalotto=50
set ilosclotto=0
set wygranalotto=0
set przegranalotto=0
set $lotto=100

set cenalottoplus=100
set ilosclottoplus=0
set wygranalottoplus=0
set przegranalottoplus=0
set $lottoplus=250

set cenalottopro=250
set ilosclottopro=0
set wygranalottopro=0
set przegranalottopro=0
set $lottopro=500

set cenalottomax=500
set ilosclottomax=0
set wygranalottomax=0
set przegranalottomax=0
set $lottomax=10000

set rebirph=0
set iloscwin=0
set iloscdebet=0
set savewin=0
set savedebet=0

set politykamiasta=0
set zadowolenie=0
set atrakcyjnosc=0
set tura=1

set kasa=10000
set tajnybonus=5000
set podatek=250

set mieszkancy=0
set turysta=0
set dturysta=0

set iloscapartament=0
set cenaapartament=500
set mieszkancyapartament=4

set iloscaltana=0
set cenaaltana=250
set mieszkancyaltana=2

set iloscmalydom=0
set cenamalydom=750
set mieszkancymalydom=6

set cenadom=2500
set iloscdom=0
set mieszkancydom=15

set cenablok=5000
set iloscblok=0
set mieszkancyblok=50

set cenawierzowiec=10000
set iloscwierzowiec=0
set mieszkancywierzowiec=500

set cenabasen=5000
set iloscbasen=0
set turyscibasen=100

set cenasilownia=2500
set iloscsilownia=0
set turyscisilownia=50

set lotnisko=0
set cenalotnisko=7500
set ilosclotnisko=0
set turyscilotnisko=500
set otlotnisko=100
set olotnisko=0

set cenaboisko=1000
set iloscboisko=0
set turysciboisko=25

:start
cls
echo ########################
echo #####Witaj w grze!!#####
echo ########################
echo.
echo Dzisiaj jest %date%
echo Obecnie jest godzina %time%
echo.
echo Wybierz liczbe aby kontynuowac
echo 1. Graj
echo 2. Zobacz instrukcje / informacje
echo 3. Zobacz Bardzo krotka fabule
echo 4. Zobacz Credits
echo 5. Wyjdz z gry
set /p start=:
if %start% == 1 goto gra
if %start% == 2 goto infostart
if %start% == 3 goto fabulastart
if %start% == 4 goto creditsstart
if %start% == 5 goto exitstart
goto start


:gra
cls
echo Wybierz imie
set /p name=:
echo.
echo Wybierz nazwisko
set /p lastname=:
echo.
echo Wybierz wiek
set /p age=:
echo.
echo Wybierz nazwe miasta
set /p city=:
echo.
echo Witaj %name% %lastname%, masz %age% lat, zarzadzasz miastem: %city%!
echo Wcisnij dowolny przycisk, aby kontynuowac
pause>nul
goto menu

:menu
set /a kasa=kasa-%podatek%
if %iloscwin% geq 1 goto menu2
if %mieszkancy% geq 10000 goto win
if %turysta% geq 100000 goto win

:menu2
if %kasa% leq 0 goto debet

:menu3
cls
echo #######################################################################
echo #Witaj %name% %lastname%, masz %age% lat i zarzadzasz miastem: %city%!#
echo #Obecna wersja gry: %version%, ilosc Rebirph (zaczecia gry od nowa): %rebirph%      #
echo #Dzisiaj jest %date%, obecnie jest godzina %time%       #
echo #%name%, w twoim miescie mieszka obecnie %mieszkancy% mieszkancow, i jest %turysta% turystow#
echo #######################################################################
echo.
echo Wybierz co chcesz zrobic
echo 1. Kupic cos
echo 2. Przeczytac Credits
echo 3. Przyczytac instrukcje / informacje
echo 4. Przyczytac fabole
echo 5. Wyjsc z gry
echo 6. Zaczac od nowa
echo 7. Zagrac w Lotto
echo 8. Przeczytac statystyki
echo 9. Zapisac gre
echo 10. Turysci
set /p menu=:
if %menu% == 1 goto kupno
if %menu% == 2 goto credits
if %menu% == 3 goto info
if %menu% == 4 goto fabola
if %menu% == 5 goto exit
if %menu% == 6 goto kstart
if %menu% == 7 goto mlotto
if %menu% == 8 goto stats
if %menu% == 9 goto psave
if %menu% == 10 goto mturysta
if %menu% == 8642 set /a kasa=kasa+%tajnybonus%
goto menu

:mturysta
cls
if %lotnisko% == 1 goto lturysta
echo Wybierz, co chcesz zrobic
echo 0. Powrocic
echo 1. Kupic osrodki turystyczne (Boisko (%cenaboisko%$), silownia (%cenasilownia%$), basen (%cenabasen%$)(bez lotniska nie kupisz))
echo 2. Kupic Lotnisko (%cenalotnisko%$)
set /p mturysta=:
if %mturysta% == 0 goto menu
if %mturysta% == 1 goto osrodkit
if %mturysta% == 2 goto klotnisko
goto mturysta

:lturysta
cls
echo Wybierz, co chcesz zrobic
echo 0. Powrocic
echo 1. Kupic osrodki turystyczne (Boisko (%cenaboisko%$), silownia (%cenasilownia%$), basen (%cenabasen%$)
echo 2. Odebrac turystow z lotniska (%otlotnisko% turystow)
set /p lturysta=:
if %lturysta% == 0 goto menu
if %lturysta% == 1 goto osrodkit
if %lturysta% == 2 goto oplotnisko
goto lturysta

:oplotnisko
cls
echo Czy na pewno chcesz odebrac turystow z lotniska?
echo 1. Tak
echo 2. Nie
set /p olotnisko=:
if %olotnisko% == 1 goto olotniskot
if %olotnisko% == t goto olotniskot
if %olotnisko% == T goto olotniskot
if %olotnisko% == 2 goto lturysta
if %olotnisko% == n goto lturysta
if %olotnisko% == N goto lturysta
goto olotnisko

:olotnisko
cls
set /a olotnisko=olotnisko+1
set /a turysta=turysta+%otlotnisko%
echo Gratulacje odebrales turystow z lotniska!
echo Wcisnij dowolny klawisz, aby powrocic
pause>nul
goto lturysta

:klotnisko
cls
echo Czy na pewno chcesz kupic lotnisko (kosztuje ono %cenalotnisko%$ (kupujac je odblokujesz turystow))
echo 1. Tak
echo 2. Nie
set /p klotnisko=:
if %klotnisko% == 1 goto tlotnisko
if %klotnisko% == t goto tlotnisko
if %klotnisko% == T goto tlotnisko
if %klotnisko% == 2 goto mturysta
if %klotnisko% == n goto mturysta
if %klotnisko% == N goto mturysta
goto klotnisko

:osrodkit
cls
if %dturysta% == 0 goto bosrodkit
echo Co chcesz kupic?
echo 1. Boisko (%cenaboisko%$)
echo 2. Silownie (%cenasilownia%$)
echo 3. Basen (%cenabasen%$)
set /p osrodkit=:
if %osrodkit% == 1 goto kboisko
if %osrodkit% == 2 goto ksilownia
if %osrodkit% == 3 goto kbasen
goto osrodkit

:kbasen
cls
echo Czy na pewno chcesz kupic basen (kosztuje on %cenabasen%$)?
echo 1. Tak
echo 2. Nie
set /p kbasen=:
if %kbasen% == 1 goto tbasen
if %kbasen% == t goto tbasen
if %kbasen% == T goto tbasen
if %kbasen% == 2 goto mturysta
if %kbasen% == n goto mturysta
if %kbasen% == N goto mturysta
goto kbasen

:tbasen
cls
set /a iloscbasen=iloscbasen+1
set /a kasa=kasa-%cenabasen%
set /a turysta=turysta+%turyscibasen%
echo Gratulacje, wlasne kupiles basen
echo.
echo ###########################
echo ###########################
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###########################
echo ###########################
echo.
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###########################
echo.
echo ###---------------------###
echo ###                     ###
echo ###---------------------###
echo.
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###                     ###
echo ###---------------------###
echo ###########################
echo ###########################
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Kupic ponownie basen
echo 2. Powrocic
set /p tbasen=:
if %tbasen% == 1 goto pbasen
if %tbasen% == 2 goto mturysta
goto nbasen

:nbasen
cls
echo Gratulacje, wlasne kupiles basen
echo.
echo ###########################
echo ###########################
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###########################
echo ###########################
echo.
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###########################
echo.
echo ###---------------------###
echo ###                     ###
echo ###---------------------###
echo.
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###                     ###
echo ###---------------------###
echo ###########################
echo ###########################
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Kupic ponownie basen
echo 2. Powrocic
set /p nbasen=:
if %nbasen% == 1 goto pbasen
if %nbasen% == 2 goto mturysta
goto nbasen

:pbasen
cls
echo Czy na pewno chcesz kupic ponownie basen?
echo 1. Tak
echo 2. Nie
set /p pbasen=:
if %pbasen% == 1 goto tbasen
if %pbasen% == t goto tbasen
if %pbasen% == T goto tbasen
if %pbasen% == 2 goto mturysta
if %pbasen% == n goto mturysta
if %pbasen% == N goto mturysta
goto pbasen

:ksilownia
cls
echo Czy na pewno chcesz kupic silownie (kosztuje ona %cenasilownia%$)?
echo 1. Tak
echo 2. Nie
set /p ksilownia=:
if %ksilownia% == 1 goto tsilownia
if %ksilownia% == t goto tsilownia
if %ksilownia% == T goto tsilownia
if %ksilownia% == 2 goto mturysta
if %ksilownia% == n goto mturysta
if %ksilownia% == N goto mturysta
goto ksilownia

:tsilownia
cls
set /a iloscsilownia=iloscsilownia+1
set /a kasa=kasa-%cenasilownia%
set /a turysta=turysta+%turyscisilownia%
echo Gratulacje, wlasnie kupiles silownie!
echo.
echo ###########################
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###---------------------###
echo ###########################
echo ###########################
echo.
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###########################
echo 
echo ###---------------------###
echo ###                     ###
echo ###---------------------###
echo. 
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###                     ###
echo ###---------------------###
echo ###########################
echo ###########################
echo.
echo Wybierz co chcesz dalej zrobic
echo 1. Kupic silownie ponownie
echo 2. Powrocic
set /p tsilownia=:
if %tsilownia% == 1 goto psilownia
if %tsilownia% == 2 goto mturysta
goto nsilownia

:nsilownia
cls
echo Gratulacje, wlasnie kupiles silownie!
echo.
echo ###########################
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###                     ###
echo ###                     ###
echo ###---------------------###
echo ###########################
echo ###########################
echo.
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###########################
echo 
echo ###---------------------###
echo ###                     ###
echo ###---------------------###
echo. 
echo ###########################
echo ###---------------------###
echo ###                     ###
echo ###                     ###
echo ###---------------------###
echo ###########################
echo ###########################
echo.
echo Wybierz co chcesz dalej zrobic
echo 1. Kupic silownie ponownie
echo 2. Powrocic
set /p nsilownia=:
if %nsilownia% == 1 goto psilownia
if %nsilownia% == 2 goto mturysta
goto nsilownia

:psilownia
cls
echo Czy na pewno chcesz kupic ponownie silownie?
echo 1. Tak
echo 2. Nie
set /p psilownia=:
if %psilownia% == 1 goto tsilownia
if %psilownia% == t goto tsilownia
if %psilownia% == T goto tsilownia
if %psilownia% == 2 goto mturysta
if %psilownia% == n goto mturysta
if %psilownia% == N goto mturysta
goto psilownia

:kboisko
cls
echo Czy na pewno chcesz kupic boisko (Kosztuje ono %cenaboisko%%)?
echo 1. Tak
echo 2. Nie
set /p kboisko=:
if %kboisko% == 1 goto tboisko
if %kboisko% == t goto tboisko
if %kboisko% == T goto tboisko
if %kboisko% == 2 goto mturysta
if %kboisko% == n goto mturysta
if %kboisko% == N goto mturysta
goto kboisko

:tboisko
cls
set /a iloscboisko=iloscboisko+1
set /a kasa=kasa-%cenaboisko%
set /a turysta=turysta+%turysciboisko%
echo Gratulacje, wlasnie kupiles Boisko pilkarskie!
echo.
echo ###########################
echo ###########################
echo ###---------#####---------###
echo ###---------#####---------###
echo ###---------#####---------###
echo ###########################
echo ###########################
echo.
echo ###########################
echo ###----#############----###
echo ###########################
echo.
echo ###---#######---#######---###
echo ###---#######---#######---###
echo ###---#######---#######---###
echo.
echo ###########################
echo ###----#############----###
echo ###----#############----###
echo ###########################
echo.
echo ###########################
echo ###---------#####---------###
echo ###---------#####---------###
echo ###---------#####---------###
echo ###########################
echo ###########################
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Kupic boisko ponownie
echo 2. Powrocic
set /p tboisko=:
if %tboisko% == 1 goto pboisko
if %tboisko% == 2 goto mturysta
goto nboisko

:nboisko
cls
echo Gratulacje, wlasnie kupiles Boisko pilkarskie!
echo.
echo ###########################
echo ###########################
echo ###---------#####---------###
echo ###---------#####---------###
echo ###---------#####---------###
echo ###########################
echo ###########################
echo.
echo ###########################
echo ###----#############----###
echo ###########################
echo.
echo ###---#######---#######---###
echo ###---#######---#######---###
echo ###---#######---#######---###
echo.
echo ###########################
echo ###----#############----###
echo ###----#############----###
echo ###########################
echo.
echo ###########################
echo ###---------#####---------###
echo ###---------#####---------###
echo ###---------#####---------###
echo ###########################
echo ###########################
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Kupic boisko ponownie
echo 2. Powrocic
set /p nboisko=:
if %nboisko% == 1 goto pboisko
if %nboisko% == 2 goto mturysta
goto nboisko

:pboisko
cls
echo Czy na pewno chcesz kupic ponownie boisko?
echo 1. Tak
echo 2. Nie
set /p pboisko=:
if %pboisko% == 1 goto tboisko
if %pboisko% == t goto tboisko
if %pboisko% == T goto tboisko
if %pboisko% == 2 goto mturysta
if %pboisko% == n goto mturysta
if %pboisko% == N goto mturysta
goto pboisko

:bosrodkit
cls
echo Nie kupiles lotniska, wiec nie odblokowales turystow!
echo Wybierz, co chcesz zrobic
echo 1. Powrocic
echo 2. Kupic lotnisko (%cenalotnisko%$)
set /p bosrodkit=:
if %bosrodkit% == 1 goto mturysta
if %bosrodkit% == 2 goto klotnisko
goto bosrodkit

:tlotnisko
cls
if %lotnisko% == 1 goto blotnisko
set lotnisko=1
set dturysta=1
set /a kasa=kasa-%cenalotnisko%
set /a turysta=turysta+%turyscilotnisko%
echo Gratulacje kupiles lotnisko, czym odblokowales turystow!
echo.
echo #############################################################
echo #############################################################
echo ####---------------------------------------------------######
echo ####                                                   ######
echo ####                                                   ######
echo ####                                                   ######
echo ####---------------------------------------------------######
echo #############################################################
echo #############################################################
echo.
echo Wybierz co chcesz dalej zrobic
echo 1. Kupic osrodki turystyczne
echo 2. Powrocic
set /p tlotnisko=:
if %tlotnisko% == 1 goto osrodkit
if %tlotnisko% == 2 goto mturysta
goto nlotnisko

:nlotnisko
cls
echo Gratulacje kupiles lotnisko, czym odblokowales turystow!
echo.
echo #############################################################
echo #############################################################
echo ####---------------------------------------------------######
echo ####                                                   ######
echo ####                                                   ######
echo ####                                                   ######
echo ####---------------------------------------------------######
echo #############################################################
echo #############################################################
echo.
echo Wybierz co chcesz dalej zrobic
echo 1. Kupic osrodki turystyczne
echo 2. Powrocic
set /p nlotnisko=:
if %nlotnisko% == 1 goto osrodkit
if %nlotnisko% == 2 goto mturysta
goto nlotnisko

:blotnisko
cls
echo Juz kupiles lotnisko, nie musisz tego robic
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto mturysta

:kupno
cls
echo Wybierz, co chcesz kupic
echo 0. Powrocic
echo 1. Male budynki
echo 2. Duze budynki
set /p kupno=:
if %kupno% == 0 goto menu
if %kupno% == 1 goto mbudynki
if %kupno% == 2 goto dbudynki
if %kupno% == 3 goto osrodkit
if %kupno% == 4 goto osrodkik
goto kupno

:debet
cls
set /a kasadebet=kasadebet+(%kasa%+5000)
set /a iloscdebet=iloscdebet+1
echo Niestety twoje pieniadze sa ponizej 0 (%kasa%$), wiec przegrales gre :(
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Zabaczyc tworcow
echo 2. Grac dalej (i dostac %kasadebet%$ na dobry poczatek :))
echo 3. Zaczac od nowa
echo 4. Zapisac statystyki
echo 5. Wyjsc z gry
set /p debet=:
if %debet% == 1 goto credits
if %debet% == 2 goto debetplus
if %debet% == 3 goto kstart
if %debet% == 4 goto savedebetp
if %debet% == 5 goto exit
goto debet2

:debet2
cls
set /a kasadebet=kasadebet+(%kasa%+10000)
echo Niestety twoje pieniadze sa ponizej 0 (%kasa%$), wiec przegrales gre :(
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Zabaczyc tworcow
echo 2. Grac dalej (i dostac %kasadebet%$ na dobry poczatek :))
echo 3. Zaczac od nowa
echo 4. Zapisac statystyki
echo 5. Wyjsc z gry
set /p debet2=:
if %debet2% == 1 goto credits
if %debet2% == 2 goto debetplus
if %debet2% == 3 goto kstart
if %debet2% == 4 goto savedebetp
if %debet2% == 5 goto exit
goto debet2

:debetplus
cls
echo Czy chcesz odebrac darmowe %kasadebet%$ (Kto by nie chcial?)?
echo 1. Tak
echo 2. Nie
set /p debetplus=:
if %debetplus% == 1 goto debetplust
if %debetplus% == t goto debetplust
if %debetplus% == T goto debetplust
if %debetplus% == 2 goto debetplusn
if %debetplus% == n goto debetplusn
if %debetplus% == N goto debetplusn
goto debetplus

:debetplusn
cls
echo Na pewno nie chcesz odebrac darmowego %kasadebet%$?
echo 1. Chce odebrac
echo 2. Nie chce odbierac
set /p debetplusn=:
if %debetplusn% == 1 goto debetplust
if %debetplusn% == t goto debetplust
if %debetplusn% == T goto debetplust
if %debetplusn% == 2 goto debet2
if %debetplusn% == n goto debet2
if %debetplusn% == N goto debet2
goto debetplusn

:debetplust
cls
set /a kasa=kasa+%kasadebet%
echo Gratulacje %kasadebet%$ zostalo przypisane do twojego konta! (obecnie posiadasz %kasa%$)
echo Wcisnij dowolny klawisz aby kontynuowac gre
pause>nul
goto menu

:savedebetp
cls
if %savedebet% geq 1 goto savedebetb
echo Czy na pewno chcesz zapisac swoje statystyki?
echo 1. Tak
echo 2. Nie
set /p savedebetp=:
if %savedebetp% == 1 goto savedebet
if %savedebetp% == t goto savewin
if %savedebetp% == T goto savewin
if %savedebetp% == 2 goto debet2
if %savedebetp% == n goto debet2
if %savedebetp% == N goto debet2
goto savedebetp

:savedebetb
cls
echo Zapisales juz swoje statystyki, nie musisz robic tego ponownie
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto debet2

:psave
echo Czy na pewno chcesz zapisac statystyki?
echo 1. Tak
echo 2. Nie
set /p psave=:
if %psave% == 1 goto save
if %psave% == t goto save
if %psave% == T goto save
if %psave% == 2 goto menu
if %psave% == n goto menu
if %psave% == N goto menu
goto psave

:win
cls
set /a iloscwin=iloscwin+1
echo Gratulacje wygrales gre!
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Zabaczyc tworcow
echo 2. Grac dalej
echo 3. Zaczac od nowa
echo 4. Zapisac statystyki
echo 5. Wyjsc z gry
set /p win=:
if %win% == 1 goto credits
if %win% == 2 goto menu
if %win% == 3 goto kstart
if %win% == 4 goto savewinp
if %win% == 5 goto exit
goto win2

:win2
cls
echo Gratulacje wygrales gre!
echo.
echo Wybierz, co chcesz dalej zrobic
echo 1. Zabaczyc tworcow
echo 2. Grac dalej
echo 3. Zaczac od nowa
echo 4. Zapisac statystyki
echo 5. Wyjsc z gry
set /p win2=:
if %win2% == 1 goto credits
if %win2% == 2 goto menu
if %win2% == 3 goto kstart
if %win2% == 4 goto savewinp
if %win2% == 5 goto exit
goto win2

:savewinp
if %savewin% geq 1 goto savewinb
echo Czy na pewno chcesz zapisac swoje statystyki?
echo 1. Tak
echo 2. Nie
set /p savewinp=:
if %savewinp% == 1 goto savewin
if %savewinp% == t goto savewin
if %savewinp% == T goto savewin
if %savewinp% == 2 goto win2
if %savewinp% == n goto win2
if %savewinp% == N goto win2
goto savewinp

:savewinb
cls
echo Zapisales juz swoje statystyki, nie musisz robic tego ponownie
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto win2

:stats
cls
if %wygranalottomax% gtr 0 goto lottomaxstats
echo Wersja gry: %version%
echo Imie burmistrza: %name%
echo Nazwisko burmistrza: %lastname%
echo Wiek burmistrza: %age%
echo Nazwa miasta: %city%
echo Ilosc mieszkancow: %mieszkancy%
echo Ilosc turystow: %turysci%
echo Ilosc Rebirph (zaczecia gry od nowa): %rebirph%
echo Ilosc pieniedzy na koncie: %kasa%$
echo Ilosc zakupionych malych domow: %iloscmalydom%
echo Ilosc zakupionych altan: %iloscaltana%
echo Ilosc zakupionych apartamentow: %iloscapartament%
echo Ilosc zakupionych domow: %iloscdom%
echo Ilosc zakupionych blokow: %iloscblok%
echo Ilosc zakupionych wierzowcow: %iloscwierzowiec%
echo Ilosc zakupionych basenow: %iloscbasen%
echo Ilosc zakupionych silowni: %iloscsilownia%
echo Ilosc zakupionych boisk: %iloscboisko%
echo Ilosc zakupionych MiniLotto: %iloscminilotto%
echo Ilosc wygranych MiniLotto: %wygranaminilotto%
echo Ilosc przegranych MiniLotto: %przegranaminilotto%
echo Ilosc zakupionych Lotto: %ilosclotto%
echo Ilosc wygranych Lotto: %wygranalotto%
echo Ilosc przegranych Lotto: %przegranalotto%
echo Ilosc zakupionych Lotto+: %ilosclottoplus%
echo Ilosc wygranych Lotto+: %wygranalottoplus%
echo Ilosc przegranych Lotto+: %przegranalottoplus%
echo Ilosc zakupionych Lotto Pro: %ilosclottopro%
echo Ilosc wygranych Lotto Pro: %wygranalottopro%
echo Ilosc przegranych Lotto Pro: %przegranalottopro%
echo Ilosc zakupionych Lotto Max: %ilosclottomax%
echo Ilosc wygranych Lotto Max %wygranalottomax%
echo Ilosc przegranych Lotto Max: %przegranalottomax%
echo Ilosc wygranych (mozliwe tylko 1 raz na gre): %iloscwin%
echo Ilosc przegranych: %iloscdebet%
echo Ilosc odbioru turystow z lotniska: %olotnisko%
echo.
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto menu

:lottomaxstats
cls
echo Wersja gry: %version%
echo Imie burmistrza: %name%
echo Nazwisko burmistrza: %lastname%
echo Wiek burmistrza: %age%
echo Nazwa miasta: %city%
echo Ilosc mieszkancow: %mieszkancy%
echo Ilosc turystow: %turysci%
echo Ilosc Rebirph (zaczecia gry od nowa): %rebirph%
echo Ilosc pieniedzy na koncie: %kasa%$
echo Ilosc zakupionych malych domow: %iloscmalydom%
echo Ilosc zakupionych altan: %iloscaltana%
echo Ilosc zakupionych apartamentow: %iloscapartament%
echo Ilosc zakupionych domow: %iloscdom%
echo Ilosc zakupionych blokow: %iloscblok%
echo Ilosc zakupionych wierzowcow: %iloscwierzowiec%
echo Ilosc zakupionych basenow: %iloscbasen%
echo Ilosc zakupionych silowni: %iloscsilownia%
echo Ilosc zakupionych boisk: %iloscboisko%
echo Ilosc zakupionych MiniLotto: %iloscminilotto%
echo Ilosc wygranych MiniLotto: %wygranaminilotto%
echo Ilosc przegranych MiniLotto: %przegranaminilotto%
echo Ilosc zakupionych Lotto: %ilosclotto%
echo Ilosc wygranych Lotto: %wygranalotto%
echo Ilosc przegranych Lotto: %przegranalotto%
echo Ilosc zakupionych Lotto+: %ilosclottoplus%
echo Ilosc wygranych Lotto+: %wygranalottoplus%
echo Ilosc przegranych Lotto+: %przegranalottoplus%
echo Ilosc zakupionych Lotto Pro: %ilosclottopro%
echo Ilosc wygranych Lotto Pro: %wygranalottopro%
echo Ilosc przegranych Lotto Pro: %przegranalottopro%
echo Ilosc zakupionych Lotto Max: %ilosclottomax%
echo Ilosc wygranych Lotto Max %wygranalottomax% Gratulacje!
echo Ilosc przegranych Lotto Max: %przegranalottomax%
echo Ilosc wygranych (mozliwe tylko 1 raz na gre): %iloscwin%
echo Ilosc przegranych: %iloscdebet%
echo Ilosc odbioru turystow z lotniska: %olotnisko%
echo.
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto menu

:mlotto
cls
echo Jakie lotto chcesz kupic?
echo 1. MiniLotto (%cenaminilotto%$)
echo 2. Lotto (%cenalotto%$)
echo 3. Lotto+ (%cenalottoplus%$)
echo 4. Lotto Pro (%cenalottopro%$)
echo 5. Lotto Max (%cenalottomax%$)
echo 6. Chce wrocic
set /p mlotto=:
if %mlotto% == 1 goto kminilotto
if %mlotto% == 2 goto klotto
if %mlotto% == 3 goto klottoplus
if %mlotto% == 4 goto klottopro
if %mlotto% == 5 goto klottomax
if %mlotto% == 6 goto menu
goto mlotto

:kminilotto
cls
echo Czy na pewno chcesz kupic MiniLotto (kosztuje ono %cenaminilotto%$)?
echo 1. Tak
echo 2. Nie
set /p kminilotto=:
if %kminilotto% == 1 goto minilotto
if %kminilotto% == t goto minilotto
if %kminilotto% == T goto minilotto
if %kminilotto% == 2 goto mlotto
if %kminilotto% == n goto mlotto
if %kminilotto% == N goto mlotto
goto kminilotto

:minilotto
cls
set /a losminilotto=(%random% %%10)
if %losminilotto% == 0 goto minilotto
set /a kasa=kasa-%cenaminilotto%
set /a iloscminilotto=iloscminilotto+1
echo Podaj swoja liczbe (1-10)
set /p uminilotto=:
if %uminilotto% gtr 10 goto bminilotto
if %uminilotto% == %losminilotto% goto wygranaminilotto
if not %uminilotto% == %losminilotto% goto przegranaminilotto
goto pminilotto

:bminilotto
cls
echo Wpisales nieprawidlowa liczbe!
echo Nacisnij dowolny klawisz aby sprobowac ponownie
pause>nul
goto minilottop

:minilottop
cls
set /a losminilotto=(%random% %%10)
if %losminilotto% == 0 goto minilotto
echo Podaj swoja liczbe (1-10)
set /p upminilotto=:
if %uminilotto% gtr 10 goto bminilotto
if %uminilotto% == %losminilotto% goto wygranaminilotto
if not %uminilotto% == %losminilotto% goto przegranaminilotto
goto minilotto

:wygranaminilotto
cls
set /a wygranaminilotto=wygranaminilotto+1
echo Gratulacje, zgadles wylosowana liczbe (%losminilotto%)! (Twoja liczba: %uminilotto%)
echo Do twojego konta zostalo dodane %$minilotto%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w MiniLotto
echo 2. Powrocic
set /p wygranaminilotto=:
if %wygranaminilotto% == 1 goto pminilotto
if %wygranaminilotto% == 2 goto mlotto
goto wygranaminilotto2

:wygranaminilotto2
cls
echo Gratulacje, zgadles wylosowana liczbe (%losminilotto%)! (Twoja liczba: %uminilotto%)
echo Do twojego konta zostalo dodane %$minilotto%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w MiniLotto
echo 2. Powrocic
set /p wygranaminilotto2=:
if %wygranaminilotto2% == 1 goto pminilotto
if %wygranaminilotto2% == 2 goto mlotto
goto wygranaminilotto2

:przegranaminilotto
cls
set /a przegranaminilotto=przegranaminilotto+1
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%losminilotto%). (Twoja liczba: %uminilotto%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w MiniLotto
echo 2. Powrocic
set /p przegranaminilotto=:
if %przegranaminilotto% == 1 goto pminilotto
if %przegranaminilotto% == 2 goto mlotto
goto przegranaminilotto2

:przegranaminilotto2
cls
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%losminilotto%). (Twoja liczba: %uminilotto%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w MiniLotto
echo 2. Powrocic
set /p przegranaminilotto2=:
if %przegranaminilotto2% == 1 goto pminilotto
if %przegranaminilotto2% == 2 goto mlotto
goto przegranaminilotto2

:pminilotto
cls
echo Czy na pewno chcesz zagrac ponownie w mini lotto?
echo 1. Tak
echo 2. Nie
set /p pminilotto=:
if %pminilotto% == 1 goto minilotto
if %pminilotto% == t goto minilotto
if %pminilotto% == T goto minilotto
if %pminilotto% == 2 goto mlotto
if %pminilotto% == n goto mlotto
if %pminilotto% == N goto mlotto
goto pminilotto

:klotto
cls
echo Czy na pewno chcesz kupic Lotto (kosztuje ono %cenalotto%$)?
echo 1. Tak
echo 2. Nie
set /p klotto=:
if %klotto% == 1 goto lotto
if %klotto% == t goto lotto
if %klotto% == T goto lotto
if %klotto% == 2 goto mlotto
if %klotto% == n goto mlotto
if %klotto% == N goto mlotto
goto klotto

:lotto
cls
set /a loslotto=(%random% %%15)
if %loslotto% == 0 goto lotto
set /a ilosclotto=ilosclotto+1
set /a kasa=kasa-%cenalotto%
echo Podaj swoja liczbe (1-15)
set /p ulotto=:
if %ulotto% gtr 15 goto blotto
if %ulotto% == %loslotto% goto wygranalotto
if not %ulotto% == %loslotto% goto przegranalotto
goto lotto

:blotto
cls
echo Wpisales nieprawidlowa liczbe!
echo Nacisnij dowolny klawisz aby sprobowac ponownie
pause>nul
goto lottop

:lottop
cls
set /a losilotto=(%random% %%15)
if %loslotto% == 0 goto lotto
echo Podaj swoja liczbe (1-15)
set /p ulotto=:
if %ulotto% gtr 15 goto blotto
if %ulotto% == %loslotto% goto wygranalotto
if not %ulotto% == %loslotto% goto przegranalotto
goto lottop

:wygranalotto
cls
set /a wygranalotto=wygranalotto+1
echo Gratulacje, zgadles wylosowana liczbe (%loslotto%)! (Twoja liczba: %ulotto%)
echo Do twojego konta zostalo dodane %$lotto%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto
echo 2. Powrocic
set /p wygranalotto=:
if %wygranalotto% == 1 goto plotto
if %wygranalotto% == 2 goto mlotto
goto wygranalotto2

:wygranalotto2
cls
echo Gratulacje, zgadles wylosowana liczbe (%loslotto%)! (Twoja liczba: %ulotto%)
echo Do twojego konta zostalo dodane %$lotto%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto
echo 2. Powrocic
set /p wygranalotto2=:
if %wygranalotto2% == 1 goto plotto
if %wygranalotto2% == 2 goto mlotto
goto wygranalotto2

:przegranalotto
cls
set /a przegranalotto=przegranalotto+1
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslotto%). (Twoja liczba: %ulotto%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto
echo 2. Powrocic
set /p przegranalotto=:
if %przegranalotto% == 1 goto plotto
if %przegranalotto% == 2 goto mlotto
goto przegranalotto2

:przegranalotto2
cls
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslotto%). (Twoja liczba: %ulotto%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto
echo 2. Powrocic
set /p przegranalotto2=:
if %przegranalotto2% == 1 goto plotto
if %przegranalotto2% == 2 goto mlotto
goto przegranalotto2

:plotto
cls
echo Czy na pewno chcesz zagrac ponownie w Lotto?
echo 1. Tak
echo 2. Nie
set /p plotto=:
if %plotto% == 1 goto lotto
if %plotto% == t goto lotto
if %plotto% == T goto lotto
if %plotto% == 2 goto mlotto
if %plotto% == n goto mlotto
if %plotto% == N goto mlotto
goto plotto

:klottoplus
cls
echo Czy na pewno chcesz kupic Lotto+ (kosztuje ono %cenalottoplus%$)?
echo 1. Tak
echo 2. Nie
set /p klottoplus=:
if %klottoplus% == 1 goto lottoplus
if %klottoplus% == t goto lottoplus
if %klottoplus% == T goto lottoplus
if %klottoplus% == 2 goto mlotto
if %klottoplus% == n goto mlotto
if %klottoplus% == N goto mlotto
goto klottoplus

:lottoplus
cls
set /a loslottoplus=(%random% %%30)
if %loslottoplus% == 0 goto lottoplus
set /a kasa=kasa-%cenalottoplus%
set /a ilosclottoplus=ilosclottoplus+1
echo Podaj swoja liczbe (1-30)
set /p ulottoplus=:
if %ulottoplus% gtr 30 goto blottoplus
if %ulotto% == %loslotto% goto wygranalottoplus
if not %ulottoplus% == %loslottoplus% goto przegranalottoplus
goto lottoplus

:blottoplus
cls
echo Wpisales nieprawidlowa liczbe!
echo Nacisnij dowolny klawisz aby sprobowac ponownie
pause>nul
goto lottopplus

:lottopplus
cls
set /a loslottoplus=(%random% %%15)
if %loslottoplus% == 0 goto lottoplus
echo Podaj swoja liczbe (1-15)
set /p ulottoplus=:
if %ulottoplus% gtr 15 goto blottoplus
if %ulottoplus% == %loslottoplus% goto wygranalottoplus
if not %ulottoplus% == %loslottoplus% goto przegranalottoplus
goto lottoplus

:wygranalottoplus
cls
set /a wygranalottoplus=wygranalottoplus+1
echo Gratulacje, zgadles wylosowana liczbe (%loslottoplus%)! (Twoja liczba: %ulottoplus%)
echo Do twojego konta zostalo dodane %$lottoplus%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto+
echo 2. Powrocic
set /p wygranalottoplus=:
if %wygranalottoplus% == 1 goto plottoplus
if %wygranalottoplus% == 2 goto mlotto
goto wygranalottoplus2

:wygranalottoplus2
cls
echo Gratulacje, zgadles wylosowana liczbe (%loslottoplus%)! (Twoja liczba: %ulottoplus%)
echo Do twojego konta zostalo dodane %$lottoplus%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto+
echo 2. Powrocic
set /p wygranalottoplus2=:
if %wygranalottoplus2% == 1 goto plottoplus
if %wygranalottoplus2% == 2 goto mlotto
goto wygranalottoplus2

:przegranalottoplus
cls
set /a przegranalottoplus=przegranalottoplus+1
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslottoplus%). (Twoja liczba: %ulotto%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto+
echo 2. Powrocic
set /p przegranalottoplus=:
if %przegranalottoplus% == 1 goto plottoplus
if %przegranailottpluso% == 2 goto mlotto
goto przegranalottoplus2

:przegranalottoplus2
cls
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslottoplus%). (Twoja liczba: %ulottoplus%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto+
echo 2. Powrocic
set /p przegranalottoplus2=:
if %przegranalottoplus2% == 1 goto plottoplus
if %przegranalottoplus2% == 2 goto mlotto
goto przegranalottoplus2

:plottoplus
cls
echo Czy na pewno chcesz zagrac ponownie w Lotto+?
echo 1. Tak
echo 2. Nie
set /p plotto=:
if %plottoplus% == 1 goto lottoplus
if %plottoplus% == t goto lottoplus
if %plottoplus% == T goto lottoplus
if %plotto% == 2 goto mlotto
if %plotto% == n goto mlotto
if %plotto% == N goto mlotto
goto plottoplus

:klottopro
cls
echo Czy na pewno chcesz kupic Lotto Pro (kosztuje ono %cenalottopro%$)?
echo 1. Tak
echo 2. Nie
set /p klottopro=:
if %klottopro% == 1 goto lottopro
if %klottopro% == t goto lottopro
if %klottopro% == T goto lottopro
if %klottopro% == 2 goto mlotto
if %klottopro% == n goto mlotto
if %klottopro% == N goto mlotto
goto klottopro

:lottopro
cls
set /a loslottopro=(%random% %%50)
if %loslottopro% == 0 goto lottopro
set /a ilosclottopro=ilosclottopro+1
set /a kasa=kasa-%cenalottopro%
echo Podaj swoja liczbe (1-50)
set /p ulottopro=:
if %ulottopro% gtr 50 goto blottopro
if %ulottopro% == %loslottopro% goto wygranalottopro
if not %ulottopro% == %loslottopro% goto przegranalottopro
goto plottoprop

:blottopro
cls
echo Wpisales nieprawidlowa liczbe!
echo Nacisnij dowolny klawisz aby sprobowac ponownie
pause>nul
goto lottoppro

:lottoppro
cls
set /a loslottopro=(%random% %%50)
if %loslottopro% == 0 goto lottopro
echo Podaj swoja liczbe (1-50)
set /p ulottopro=:
if %ulottopro% gtr 50 goto blottopro
if %ulottopro% == %loslottopro% goto wygranalottopro
if not %ulottopro% == %loslottopro% goto przegranalottopro
goto lottoppro

:wygranalottopro
cls
set /a wygranalottopro=wygranalottopro+1
echo Gratulacje, zgadles wylosowana liczbe (%loslottopro%)! (Twoja liczba: %ulottopro%)
echo Do twojego konta zostalo dodane %$lottopro%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Pro
echo 2. Powrocic
set /p wygranalottopro=:
if %wygranalottopro% == 1 goto plottopro
if %wygranalottopro% == 2 goto mlotto
goto wygranalottopro2

:wygranalottopro2
cls
echo Gratulacje, zgadles wylosowana liczbe (%loslottopro%)! (Twoja liczba: %ulottopro%)
echo Do twojego konta zostalo dodane %$lottopro%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Pro
echo 2. Powrocic
set /p wygranalottopro2=:
if %wygranalottopro2% == 1 goto plottopro
if %wygranalottopro2% == 2 goto mlotto
goto wygranalottopro2

:przegranalottopro
cls
set /a przegranalottopro=przegranalottopro+1
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslottopro%). (Twoja liczba: %ulottopro%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Pro
echo 2. Powrocic
set /p przegranalottopro=:
if %przegranalottopro% == 1 goto plottopro
if %przegranalottopro% == 2 goto mlotto
goto przegranalottopro2

:przegranalottopro2
cls
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslottopro%). (Twoja liczba: %ulottopro%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Pro
echo 2. Powrocic
set /p przegranalottopro2=:
if %przegranalottopro2% == 1 goto plottopro
if %przegranalottopro2% == 2 goto mlotto
goto przegranalottopro2

:plottopro
cls
echo Czy na pewno chcesz zagrac ponownie w Lotto Pro?
echo 1. Tak
echo 2. Nie
set /p plottopro=:
if %plottopro% == 1 goto lottopro
if %plottopro% == t goto lottopro
if %plottopro% == T goto lottopro
if %plottopro% == 2 goto mlotto
if %plottopro% == n goto mlotto
if %plottopro% == N goto mlotto
goto plottopro

:klottomax
cls
echo Czy na pewno chcesz kupic Lotto Max (kosztuje ono %cenalottomax%$)?
echo 1. Tak
echo 2. Nie
set /p klottomax=:
if %klottomax% == 1 goto lottomax
if %klottomax% == t goto lottomax
if %klottomax% == T goto lottomax
if %klottomax% == 2 goto mlotto
if %klottomax% == n goto mlotto
if %klottomax% == N goto mlotto
goto klottomax

:lottomax
cls
set /a loslottomax=(%random% %%100)
if %loslottomax% == 0 goto lottomax
set /a ilosclottomax=ilosclottomax+1
set /a kasa=kasa-%cenalottomax%
echo Podaj swoja liczbe (1-100)
set /p ulottomax=:
if %ulottomax% gtr 100 goto blottomax
if %ulottomax% == %loslottomax% goto wygranalottomax
if not %ulottomax% == %loslottomax% goto przegranalottomax
goto lottopmax

:blottomax
cls
echo Wpisales nieprawidlowa liczbe!
echo Nacisnij dowolny klawisz aby sprobowac ponownie
pause>nul
goto lottopmax

:lottopmax
cls
set /a losilottomax=(%random% %%100)
if %loslottomax% == 0 goto lottomax
echo Podaj swoja liczbe (1-100)
set /p ulottomax=:
if %ulottomax% gtr 100 goto blottomax
if %ulottomax% == %loslotto% goto wygranalottomax
if not %ulottomax% == %loslottomax% goto przegranalottomax
goto lottopmax

:wygranalottomax
cls
set /a wygranalottomax=wygranalottomax+1
echo Gratulacje, zgadles wylosowana liczbe (%loslottomax%)! (Twoja liczba: %ulottomax%)
echo Do twojego konta zostalo dodane %$lottomax%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Max
echo 2. Powrocic
set /p wygranalottomax=:
if %wygranalottomax% == 1 goto plottomax
if %wygranalottomax% == 2 goto mlotto
goto wygranalottomax2

:wygranalottomax2
cls
echo Gratulacje, zgadles wylosowana liczbe (%loslottomax%)! (Twoja liczba: %ulottomax%)
echo Do twojego konta zostalo dodane %$lottomax%$, obecny stan twojego konta: %kasa%$
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Max
echo 2. Powrocic
set /p wygranalottomax2=:
if %wygranalottomax2% == 1 goto plottomax
if %wygranalottomax2% == 2 goto mlotto
goto wygranalottomax2

:przegranalottomax
cls
set /a przegranalottomax=przegranalottomax+1
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslottomax%). (Twoja liczba: %ulottomax%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Max
echo 2. Powrocic
set /p przegranalottomax=:
if %przegranalottomax% == 1 goto pmlottomax
if %przegranalottomax% == 2 goto mlottomax
goto przegranalottomax2

:przegranalottomax2
cls
echo Niestety nie udalo Ci sie zgadnac wylosowanej liczby (%loslottomax%). (Twoja liczba: %ulottomax%)
echo.
echo Wybierz co chcesz zrobic
echo 1. Zagrac ponownie w Lotto Max
echo 2. Powrocic
set /p przegranalottomax2=:
if %przegranalottomax2% == 1 goto plottomax
if %przegranalotto2% == 2 goto mlotto
goto przegranalottomax2

:plottomax
cls
echo Czy na pewno chcesz zagrac ponownie w Lotto Max?
echo 1. Tak
echo 2. Nie
set /p plottomax=:
if %plottomax% == 1 goto lottomax
if %plottomax% == t goto lottomax
if %plottomax% == T goto lottomax
if %plottomax% == 2 goto mlotto
if %plottomax% == n goto mlotto
if %plottomax% == N goto mlotto
goto plotto

:dbudynki
cls
echo Wybierz jaki budynek chcesz kupic
echo 0. Chce powrocic
echo 1. Dom (%cenadom%$)
echo 2. Blok (%cenablok%$)
echo 3. Wierzowiec (%cenawierzowiec%$)
set /p dbudynki=:
if %dbudynki% == 0 goto kupno
if %dbudynki% == 1 goto kdom
if %dbudynki% == 2 goto kblok
if %dbudynki% == 3 goto kwierzowiec
goto dbudynki

:kwierzowiec
cls
echo Czy na pewno chcesz kupic wierzowiec (kosztuje on %cenawierzowiec%$)
echo 1. Tak
echo 2. Nie
set /p kwierzowiec=:
if %kwierzowiec% == 1 goto twierzowiec
if %kwierzowiec% == t goto twierzowiec
if %kwierzowiec% == T goto twierzowiec
if %kwierzowiec% == 2 goto dbudynki
if %kwierzowiec% == n goto dbudynki
if %kwierzowiec% == N goto dbudynki
goto kwierzowiec

:twierzowiec
cls
set /a kasa=kasa-%cenawierzowiec%
set /a iloscwierzowiec=iloscwierzowiec+1
set /a mieszkancy=mieszkancy+%mieszkancywierzowiec%
echo Gratulacje, wlasnie kupiles wierzowiec!
echo Posiadasz obecnie %kasa%$ i %iloscwierzowiec% wierzowiec/wierzowce/wierzowcow
echo.
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo ###############   #
echo ###############   #
echo ###############   #
echo ################  #
echo ###############   #
echo ###################
echo.
echo Wybierz,co chcesz zrobic
echo 1. Kupic ponownie wierzowiec
echo 2. Powrocic
set /p twierzowiec=:
if %twierzowiec% == 1 goto pwierzowiec
if %twierzowiec% == 2 goto dbudynki
goto nwierzowiec

:nwierzowiec
cls
echo Gratulacje, wlasnie kupiles wierzowiec!
echo Posiadasz obecnie %kasa%$ i %iloscwierzowiec% wierzowiec/wierzowce/wierzowcow
echo.
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo ###############   #
echo ###############   #
echo ###############   #
echo ################  #
echo ###############   #
echo ###################
echo.
echo Wybierz,co chcesz zrobic
echo 1. Kupic ponownie wierzowiec
echo 2. Powrocic
set /p nwierzowiec=:
if %nwierzowiec% == 1 goto pwierzowiec
if %nwierzowiec% == 2 goto dbudynki
goto nwierzowiec

:pwierzowiec
cls
echo Czy na pewno chcesz kupic ponownie wierzowiec?
echo 1. Tak
echo 2. Nie
set /p pwierzowiec=:
if %pwierzowiec% == 1 goto twierzowiec
if %pwierzowiec% == t goto twierzowiec
if %pwierzowiec% == T goto twierzowiec
if %pwierzowiec% == 2 goto dbudynki
if %pwierzowiec% == n goto dbudynki
if %pwierzowiec% == N goto dbudynki
goto pwierzowiec

:kblok
cls
echo Czy na pewno chcesz kupic blok (kosztuje on %cenablok%$)?
echo 1. Tak
echo 2. Nie
set /p kblok=:
if %kblok% == 1 goto tblok
if %kblok% == t goto tblok
if %kblok% == T goto tblok
if %kblok% == 2 goto dbudynki
if %kblok% == n goto dbudynki
if %kblok% == N goto dbudynki
goto kblok

:tblok
cls
set /a kasa=kasa-%cenablok%
set /a iloscblok=iloscblok+1
set /a mieszkancy=mieszkancy+%mieszkancyblok%
echo Gratulacje, wlasnie kupiles blok!
echo Posiadasz obecnie %kasa%$ i %iloscblok% blok/blokow/bloki
echo.
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo ###############   #
echo ###############   #
echo ###############   #
echo ################  #
echo ###############   #
echo ###################
echo. Wybierz, co chcesz zrobic
echo 1. Kupic blok ponownie
echo 2. Powrocic
set /p tblok=:
if %tblok% == 1 goto pblok
if %tblok% == 2 goto dbudynki
goto nblok

:nblok
cls
echo Gratulacje, wlasnie kupiles blok!
echo Posiadasz obecnie %kasa%$ i %iloscblok% blok/blokow/bloki
echo.
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo #  #  #  #  #  #  #
echo #  #  #  #  #  #  #
echo ###################
echo ###############   #
echo ###############   #
echo ###############   #
echo ################  #
echo ###############   #
echo ###################
echo. Wybierz, co chcesz zrobic
echo 1. Kupic blok ponownie
echo 2. Powrocic
set /p nblok=:
if %nblok% == 1 goto pblok
if %nblok% == 2 goto dbudynki
goto nblok

:pblok
cls
echo Czy na pewno chcesz kupic ponownie blok?
echo 1. Tak
echo 2. Nie
set /p pblok=:
if %pblok% == 1 goto tdom
if %pblok% == t goto tdom
if %pblok% == T goto tdom
if %pblok% == 2 goto dbudynki
if %pblok% == n goto dbudynki
if %pblok% == N goto dbudynki
goto pblok

:kdom
cls
echo Czy na pewno chcesz kupic dom (kosztuje on %cenadom%$)?
echo 1. Tak
echo 2. Nie
set /p kdom=:
if %kdom% == 1 goto tdom
if %kdom% == t goto tdom
if %kdom% == T goto tdom
if %kdom% == 2 goto dbudynki
if %kdom% == n goto dbudynki
if %kdom% == N goto dbudynki
goto kdom

:tdom
cls
set /a kasa=kasa-%cenadom%
set /a iloscdom=iloscdom+1
set /a mieszkancy=mieszkancy+%mieszkancydom%
echo Gratulacje, wlasnie kupiles dom!
echo Posiadasz obecnie %kasa%$ i %iloscdom% dom/domy/domow
echo.
echo          #
echo         ###
echo        #####
echo       #######
echo      #########
echo     ###########
echo    #############
echo   ###############
echo  #################
echo ###################
echo ###################
echo # # ###############
echo ###################
echo # # ###########   #
echo ###############   #
echo ###############   #
echo ################  #
echo ###############   #
echo ###############   #
echo ###################
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic dom ponownie
echo 2. Powrocic
set /p tdom=:
if %tdom% == 1 goto pdom
if %tdom% == 2 goto dbudynki
goto ndom

:ndom
cls
echo Posiadasz obecnie %kasa%$ i %iloscdom% dom/domy/domów
echo.
echo          #
echo         ###
echo        #####
echo       #######
echo      #########
echo     ###########
echo    #############
echo   ###############
echo  #################
echo ###################
echo ###################
echo # # ###############
echo ###################
echo # # ###########   #
echo ###############   #
echo ###############   #
echo ################  #
echo ###############   #
echo ###############   #
echo ###################
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic dom ponownie
echo 2. Powrocic
set /p ndom=:
if %ndom% == 1 goto pdom
if %ndom% == 2 goto dbudynki
goto ndom

:pdom
cls
echo Czy na pewno ponownie chcesz kupic dom?
echo 1. Tak
echo 2. Nie
set /p pdom=:
if %pdom% == 1 goto tdom
if %pdom% == t goto tdom
if %pdom% == T goto tdom
if %pdom% == 2 goto mbudynki
if %pdom% == n goto mbudynki
if %pdom% == N goto mbudynki
goto pdom

:mbudynki
cls
echo Wybierz jaki budynek chcesz kupic
echo 0. Wrocic
echo 1. Apartament (%cenaapartament%$)
echo 2. Altane (%cenaaltana%$)
echo 3. Maly dom (%cenamalydom%$)
set /p mbudynki=:
if %mbudynki% == 0 goto kupno
if %mbudynki% == 1 goto kapartament
if %mbudynki% == 2 goto kaltana
if %mbudynki% == 3 goto kmalydom
goto mbudynki

:kmalydom
cls
echo Czy na pewno chcesz kupic maly dom (kosztuje on %cenamalydom%$)?
echo 1. Tak
echo 2. Nie
set /p kmalydom=:
if %kmalydom% == 1 goto tmalydom
if %kmalydom% == t goto tmalydom
if %kmalydom% == T goto tmalydom
if %kmalydom% == 2 goto mbudynki
if %kmalydom% == n goto mbudynki
if %kmalydom% == N goto mbudynki
goto kmalydom

:tmalydom
cls
set /a kasa=kasa-%cenamalydom%
set /a iloscmalydom=iloscmalydom+1
set /a mieszkancy=mieszkancy+%mieszkancymalydom%
echo Gratulacje, wlasnie kupiles maly dom!
echo Posiadasz obecnie %kasa%$ i %iloscmalydom% malych domow/maly dom/male domy
echo.
echo      #
echo     ###
echo    #####
echo   #######
echo  #########
echo ###########
echo #  ########
echo #  ########
echo ########  #
echo ########  #
echo ######### #
echo ########  #
echo ###########
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic ponownie Maly dom
echo 2. Powrocic
set /p tmalydom=:
if %tmalydom% == 1 goto pmalydom
if %tmalydom% == 2 goto mbudynki
goto nmalydom

:pmalydom
cls
echo Czy na pewno ponownie chcesz kupic maly dom?
echo 1. Tak
echo 2. Nie
set /p pmalydom=:
if %pmalydom% == 1 goto tmalydom
if %pmalydom% == t goto tmalydom
if %pmalydom% == T goto tmalydom
if %pmalydom% == 2 goto mbudynki
if %pmalydom% == n goto mbudynki
if %pmalydom% == N goto mbudynki
goto pmalydom

:nmalydom
cls
echo Gratulacje, wlasnie kupiles maly dom!
echo Posiadasz obecnie %kasa%$ i %iloscmalydom% malych domow/maly dom/male domy
echo.
echo      #
echo     ###
echo    #####
echo   #######
echo  #########
echo ###########
echo #  ########
echo #  ########
echo ########  #
echo ########  #
echo ######### #
echo ########  #
echo ###########
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic ponownie altane
echo 2. Powrocic
set /p nmalydom=:
if %nmalydom% == 1 goto pmalydom
if %nmalydom% == 2 goto mbudynki
goto nmalydom

:kaltana
cls
echo Czy na pewno chcesz kupic altane (kosztuje ona %cenaaltana%$)?
echo 1. Tak
echo 2. Nie
set /p kaltana=:
if %kaltana% == 1 goto taltana
if %kaltana% == t goto taltana
if %kaltana% == T goto taltana
if %kaltana% == 2 goto mbudynki
if %kaltana% == n goto mbudynki
if %kaltana% == N goto mbudynki
goto kaltana

:taltana
cls
set /a kasa=kasa-%cenaaltana%
set /a iloscaltana=iloscaltana+1
set /a mieszkancy=mieszkancy+%mieszkancyaltana%
echo Gratulacje, wlasnie kupiles altane!
echo Posiadasz obecnie %kasa%$ na koncie i %iloscaltana% altan/altane/altany.
echo.
echo ##################
echo #######  #########
echo #######  #########
echo ###############  #
echo ###############  #
echo ################ #
echo ###############  #
echo ##################
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic ponownie Altane
echo 2. Powrocic
set /p taltana=:
if %taltana% == 1 goto paltana
if %taltana% == 2 goto mbudynki
goto naltana

:naltana
cls
echo Gratulacje, wlasnie kupiles altane!
echo Posiadasz obecnie %kasa%$ na koncie i %iloscaltana% altan/altane/altany.
echo.
echo ##################
echo #######  #########
echo #######  #########
echo ###############  #
echo ###############  #
echo ################ #
echo ###############  #
echo ##################
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic ponownie Altane
echo 2. Powrocic
set /p naltana=:
if %naltana% == 1 goto paltana
if %naltana% == 2 goto mbudynki
goto naltana

:paltana
cls
echo Czy na pewno chcesz ponownie kupic altane?
echo 1. Tak
echo 2. Nie
set /p paltana=:
if %paltana% == 1 goto taltana
if %paltana% == t goto taltana
if %paltana% == T goto taltana
if %paltana% == 2 goto mbudynki
if %paltana% == n goto mbudynki
if %paltana% == N goto mbudynki
goto paltana

:kapartament
cls
echo Czy na pewno chcesz kupic apartament (kosztuje on %cenaapartament%$)?
echo 1. Tak
echo 2. Nie
set /p kapartament=:
if %kapartament% == 1 goto tapartament
if %kapartament% == t goto tapartament
if %kapartament% == T goto tapartament
if %kapartament% == 2 goto mbudynki
if %kapartament% == n goto mbudynki
if %kapartament% == N goto mbudynki
goto kapartament

:tapartament
cls
set /a kasa=kasa-%cenaapartament%
set /a iloscapartament=iloscapartament+1
set /a mieszkancy=mieszkancy+%mieszkancyapartament%
echo Gratulacje, wlasnie kupiles apartament!
echo Posiadasz obecnie %kasa%$ na koncie i %iloscapartament% apartamentow/apartament/apartamenty.
echo.
echo #######################################
echo #    ##################################
echo #    ##################################
echo #######################################
echo #######################################
echo #######################################
echo #######################################
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic jeszcze raz Apartament
echo 2. Powrocic
set /p tapartament=:
if %tapartament% == 1 goto papartament
if %tapartament% == 2 goto mbudynki
goto napartament

:papartament
cls
echo Czy na pewno ponownie chcesz kupic apartament?
echo 1. Tak
echo 2. Nie
set /p papartament=:
if %papartament% == 1 goto tapartament
if %papartament% == t goto tapartament
if %papartament% == T goto tapartament
if %papartament% == 2 goto mbudynki
if %papartament% == n goto mbudynki
if %papartament% == N goto mbudynki
goto papartament

:napartament
cls
echo Gratulacje, wlasnie kupiles apartament!
echo Posiadasz obecnie %kasa%$ na koncie i %iloscapartament% apartamentow/apartament/apartamenty.
echo.
echo #######################################
echo #    ##################################
echo #    ##################################
echo #######################################
echo #######################################
echo #######################################
echo #######################################
echo.
echo Wybierz, co chcesz zrobic
echo 1. Kupic jeszcze raz Apartament
echo 2. Powrocic
set /p napartament=:
if %napartament% == 1 goto kapartament
if %napartament% == 2 goto mbudynki
goto napartament

:fabolastart
cls
echo Budzisz sie w pieknym miescie, wstajesz, jesz sniadanie, jedziesz do liceum (oddalonego 10 kilometrow od domu),
echo Wszystko jest normalnie, az do trzeciej lekcji, nagle wszyscy slysza huk i wielki wstrzas, na twoja wies spada bomba,
echo Szybko wracasz do domu, dowiedujesz sie, ze twoj tata (burmisztrz) nie zyje, musisz przyjac wies i ja odbudowac.
echo Twoim zadaniem jest wybudowac metropolie, aby pomscic swojego ojca. Zaczynasz z %kasa%$ i %mieszkancy% mieszkancami.
echo.
echo Uwaga spoiler
echo Nacisnij klawisz, aby wybrac co chcesz zrobic
echo 1. Zobaczyc spoiler
echo 2. Powrocic
set /p fabolastart=:
if %fabolastart% == 1 goto spoilerstart
if %fabolastart% == 2 goto start
goto fabolastart

:fabola
cls
echo Budzisz sie w pieknym miescie, wstajesz, jesz sniadanie, jedziesz do liceum (oddalonego 10 kilometrow od domu),
echo Wszystko jest normalnie, az do trzeciej lekcji, nagle wszyscy slysza huk i wielki wstrzas, na twoja wies spada bomba,
echo Szybko wracasz do domu, dowiedujesz sie, ze twoj tata (burmisztrz) nie zyje, musisz przyjac wies i ja odbudowac.
echo Twoim zadaniem jest wybudowac metropolie, aby pomscic swojego ojca. Zaczynasz z 10 000$ i 0 mieszkancami.
echo.
echo Uwaga spoiler
echo Nacisnij klawisz, aby wybrac co chcesz zrobic
echo 1. Zobaczyc spoiler
echo 2. Powrocic
set /p fabolastart=:
if %fabola% == 1 goto spoiler
if %fabola% == 2 goto menu
goto fabola

:spoilerstart
cls
echo W przyszlych aktualizacjach pojawia sie:
echo 1. Pojawi sie drugie miasto, z ktorym bedzie trzeba walczyc
echo 2. Pracownicy
echo 3. % polityki miasta
echo 4. % zadowolenia mieszkancow
echo 5. % atrakcyjnosci miasta
echo.
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto fabolastart

:spoiler
cls
echo W przyszlych aktualizacjach pojawia sie:
echo 1. Pojawi sie drugie miasto, z ktorym bedzie trzeba walczyc
echo 2. Pracownicy
echo 3. % polityki miasta
echo 4. % zadowolenia mieszkancow
echo 5. % atrakcyjnosci miasta
echo.
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto fabola

:infostart
cls
echo Obecna wersja gry: %version%
echo W grze za pomoca cyfr i liter dokonujesz wyboru, ktorego potwierdzasz klawiszem ENTER.
echo Wygrywasz gdy zdobedziesz 10 000 mieszkancow, a przegrywasz gdy pieniadze beda ponizej lob rowne 0
echo Za kazdym razem, gdy wchodzisz do menu, pobierane jest %podatek%$ podatku.
echo.
echo Wpisz cyferke aby przejsc gdzies indziej lub powrocic
echo 1. Wroc
echo 2. Zobacz Credits
echo 3. Zobacz fabole
set /p infostart=:
if %infostart% == 1 goto start
if %infostart% == 2 goto creditsstart
if %infostart% == 3 goto fabolastart
goto infostart

:info
cls
echo Obecna wersja gry: %version%
echo W grze za pomoca cyfr i liter dokonujesz wyboru, ktorego potwierdzasz klawiszem ENTER.
echo Wygrywasz gdy zdobedziesz 10 000 mieszkancow, a przegrywasz gdy pieniadze beda ponizej lob rowne 0
echo Za kazdym razem, gdy wchodzisz do menu, pobierane jest %podatek%$ podatku.
echo.
echo Wpisz cyferke aby przejsc gdzies indziej lub powrocic
echo 1. Wroc
echo 2. Zobacz Credits
echo 3. Zobacz fabole
set /p info=:
if %info% == 1 goto start
if %info% == 2 goto credits
if %info% == 3 goto fabola
goto info

:creditsstart
cls
echo Glowny programista i Pomyslodawca: NX
echo Kanal Glownego programisty: https://www.youtube.com/@NX8642
echo.
echo Glowny tester i Pomyslodawca: Patryku
echo.
echo Wcisnij dowolny klawisz aby powrocic
pause>nul
goto start

:credits
cls
echo Glowny programista i Pomyslodawca: NX
echo Kanal Glownego programisty: https://www.youtube.com/@NX8642
echo -------------------------------------
echo Glowny tester i Pomyslodawca: Patryku
echo.
echo Wcisnij dowolny klawisz aby powrocic
pause>nul
goto menu


:exitstart
cls
echo Czy na pewno chcesz opuscic gre?
echo 1. Tak
echo 2. Nie
set /p exit=:
if %exit% == 1 exit
if %exit% == t exit
if %exit% == T exit
if %exit% == 2 goto start
if %exit% == n goto start
if %exit% == N goto start

:exit
cls
echo Czy na pewno chcesz wyjsc z gry?
echo 1. Tak
echo 2. Nie
set /p exit=:
if %exit% == 1 goto exit2
if %exit% == t goto exit2
if %exit% == T goto exit2
if %exit% == 2 goto menu
if %exit% == n goto menu
if %exit% == N goto menu
goto exit

:exit2
cls
echo Czy chcesz zapisac swoje statystyki?
echo (To tylko beda statystyki w innym pliku, jak wejdziesz ponownie to bedziesz gral od nowa)
echo 1. Chce zapisac
echo 2. Nie chce zapisywac
echo 3. Nie chce wychodzic
set /p exit2=:
if %exit2% == 1 goto esave
if %exit2% == t goto esave
if %exit2% == T goto esave
if %exit2% == 2 exit
if %exit2% == n exit
if %exit2% == N exit
if %exit2% == 3 goto menu
goto exit2

:kstart
cls
echo Czy na pewno chcesz zaczac gre od nowa?
echo 1. Tak
echo 2. Nie
set /p kstart=:
if %kstart% == 1 goto kstart2
if %kstart% == t goto kstart2
if %kstart% == T goto kstart2
if %kstart% == 2 goto menu
if %kstart% == n goto menu
if %kstart% == N goto menu
goto kstart

:kstart2
cls
echo Czy chcesz zapisac swoje statystyki?
echo (To tylko beda statystyki w innym pliku, jak wejdziesz ponownie to bedziesz gral od nowa)
echo 1. Chce zapisac
echo 2. Nie chce zapisywac
echo 3. Nie chce zaczynac od nowa
set /p kstart2=:
if %kstart2% == 1 goto rsave
if %kstart2% == t goto rsave
if %kstart2% == T goto rsave
if %kstart2% == 2 goto rgra
if %kstart2% == n goto rgra
if %kstart2% == N goto rgra
if %kstart2% == 3 goto menu
goto kstart2

:esave
cls
echo Trwa zapisywanie statystyk do pliku Statystyki.txt ...
ping localhost-n 2 >nul
echo Wersja gry: {%version%} Ilosc Rebirph: {%rebirph%} Ilosc wygranych (mozliwe tylko raz na gre): {%iloscwin%} Ilosc przegranych: {%iloscdebet%}; Imie: {%name%} Nazwisko: {%lastname%} Wiek: {%age%} Nazwa miasta: {%city%}; Ilosc mieszkancow: {%mieszkancy%}; Ilosc basenow: {%iloscbasen%} Ilosc silowni: {%iloscsilownia%} Ilosc boisk: {%iloscboisko%} Ilosc malych domow: {%iloscmalydom%} Ilosc altan: {%iloscaltana%}; Ilosc apartamentow: {%iloscapartament%} Ilosc domow: {%iloscdom%} Ilosc wierzowcow: {%iloscwierzowiec%}; Ilosc kupionych MiniLotto: {%iloscminilotto%} Ilosc wygranych MiniLotto: {%wygranaminilotto%}; Ilosc kupionych Lotto: {%ilosclotto%} Ilosc wygranych Lotto: {%wygranalotto%} Ilosc przegranych Lotto: {%przegranalotto%}; Ilosc kupionych Lotto+: {%ilosclottoplus%} Ilosc wygranych Lotto+: {%wygranalottoplus%} Ilosc Przegranych Lotto+: {%przegranalottoplus%}; Ilosc kupionych Lotto Pro: {%ilosclottopro%} Ilosc wygranych Lotto Pro: {%wygranalottopro%} Ilosc przegranych Lotto Pro: {%przegranalottopro%}; Ilosc kupionych Lotto Max: {%ilosclottomax%} Ilosc wygranych Lotto Max: {%wygranalottomax%} Ilosc przegranych Lotto Max: {%przegranalottomax%} > Statystyki.txt
exit

:save
cls
echo Trwa zapisywanie statystyk do pliku Statystyki.txt ...
ping localhost-n 2 >nul
echo Wersja gry: {%version%} Ilosc Rebirph: {%rebirph%} Ilosc wygranych (mozliwe tylko raz na gre): {%iloscwin%} Ilosc przegranych: {%iloscdebet%}; Imie: {%name%} Nazwisko: {%lastname%} Wiek: {%age%} Nazwa miasta: {%city%}; Ilosc mieszkancow: {%mieszkancy%} Ilosc turystow: {%turysta%}; Ilosc malych domow: {%iloscmalydom%} Ilosc altan: {%iloscaltana%}; Ilosc apartamentow: {%iloscapartament%} Ilosc domow: {%iloscdom%} Ilosc wierzowcow: {%iloscwierzowiec%}; Ilosc kupionych MiniLotto: {%iloscminilotto%} Ilosc wygranych MiniLotto: {%wygranaminilotto%}; Ilosc kupionych Lotto: {%ilosclotto%} Ilosc wygranych Lotto: {%wygranalotto%} Ilosc przegranych Lotto: {%przegranalotto%}; Ilosc kupionych Lotto+: {%ilosclottoplus%} Ilosc wygranych Lotto+: {%wygranalottoplus%} Ilosc Przegranych Lotto+: {%przegranalottoplus%}; Ilosc kupionych Lotto Pro: {%ilosclottopro%} Ilosc wygranych Lotto Pro: {%wygranalottopro%} Ilosc przegranych Lotto Pro: {%przegranalottopro%}; Ilosc kupionych Lotto Max: {%ilosclottomax%} Ilosc wygranych Lotto Max: {%wygranalottomax%} Ilosc przegranych Lotto Max: {%przegranalottomax%} > Statystyki.txt
echo Statystyki zostaly zapisane poprawnie!
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto menu

:savewin
cls
set /a savewin=savewin+1
echo Trwa zapisywanie statystyk do pliku Statystyki.txt ...
ping localhost-n 2 >nul
echo Wersja gry: {%version%} Ilosc Rebirph: {%rebirph%} Ilosc wygranych (mozliwe tylko raz na gre): {%iloscwin%} Ilosc przegranych: {%iloscdebet%}; Imie: {%name%} Nazwisko: {%lastname%} Wiek: {%age%} Nazwa miasta: {%city%}; Ilosc mieszkancow: {%mieszkancy%} Ilosc turystow: {%turysta%}; Ilosc malych domow: {%iloscmalydom%} Ilosc altan: {%iloscaltana%}; Ilosc apartamentow: {%iloscapartament%} Ilosc domow: {%iloscdom%} Ilosc wierzowcow: {%iloscwierzowiec%}; Ilosc kupionych MiniLotto: {%iloscminilotto%} Ilosc wygranych MiniLotto: {%wygranaminilotto%}; Ilosc kupionych Lotto: {%ilosclotto%} Ilosc wygranych Lotto: {%wygranalotto%} Ilosc przegranych Lotto: {%przegranalotto%}; Ilosc kupionych Lotto+: {%ilosclottoplus%} Ilosc wygranych Lotto+: {%wygranalottoplus%} Ilosc Przegranych Lotto+: {%przegranalottoplus%}; Ilosc kupionych Lotto Pro: {%ilosclottopro%} Ilosc wygranych Lotto Pro: {%wygranalottopro%} Ilosc przegranych Lotto Pro: {%przegranalottopro%}; Ilosc kupionych Lotto Max: {%ilosclottomax%} Ilosc wygranych Lotto Max: {%wygranalottomax%} Ilosc przegranych Lotto Max: {%przegranalottomax%} > Statystyki.txt
echo Statystyki zostaly zapisane poprawnie!
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto win2

:savedebet
cls
set /a savedebet=savedebet+1
echo Trwa zapisywanie statystyk do pliku Statystyki.txt ...
ping localhost-n 2 >nul
echo Wersja gry: {%version%} Ilosc Rebirph: {%rebirph%} Ilosc wygranych (mozliwe tylko raz na gre): {%iloscwin%} Ilosc przegranych: {%iloscdebet%}; Imie: {%name%} Nazwisko: {%lastname%} Wiek: {%age%} Nazwa miasta: {%city%}; Ilosc mieszkancow: {%mieszkancy%} Ilosc turystow: {%turysta%}; Ilosc malych domow: {%iloscmalydom%} Ilosc altan: {%iloscaltana%}; Ilosc apartamentow: {%iloscapartament%} Ilosc domow: {%iloscdom%} Ilosc wierzowcow: {%iloscwierzowiec%}; Ilosc kupionych MiniLotto: {%iloscminilotto%} Ilosc wygranych MiniLotto: {%wygranaminilotto%}; Ilosc kupionych Lotto: {%ilosclotto%} Ilosc wygranych Lotto: {%wygranalotto%} Ilosc przegranych Lotto: {%przegranalotto%}; Ilosc kupionych Lotto+: {%ilosclottoplus%} Ilosc wygranych Lotto+: {%wygranalottoplus%} Ilosc Przegranych Lotto+: {%przegranalottoplus%}; Ilosc kupionych Lotto Pro: {%ilosclottopro%} Ilosc wygranych Lotto Pro: {%wygranalottopro%} Ilosc przegranych Lotto Pro: {%przegranalottopro%}; Ilosc kupionych Lotto Max: {%ilosclottomax%} Ilosc wygranych Lotto Max: {%wygranalottomax%} Ilosc przegranych Lotto Max: {%przegranalottomax%} > Statystyki.txt
echo Statystyki zostaly zapisane poprawnie!
echo Nacisnij dowolny klawisz aby powrocic
pause>nul
goto debet2

:rsave
cls
echo Trwa zapisywanie statystyk do pliku Statystyki.txt ...
ping localhost-n 2 >nul
set /a rebirph=rebirph+1
echo Trwa resetowanie statystyk ...
ping localhost-n 1 >nul
echo Statystyki zostaly zapisane i zresetowane!
echo Nacisnij dowolny klawisz, aby przejsc do wyboru informacji o burmistrzu
pause>nul
echo Wersja gry: {%version%} Ilosc Rebirph: {%rebirph%} Ilosc wygranych (mozliwe tylko raz na gre): {%iloscwin%} Ilosc przegranych: {%iloscdebet%}; Imie: {%name%} Nazwisko: {%lastname%} Wiek: {%age%} Nazwa miasta: {%city%}; Ilosc mieszkancow: {%mieszkancy%} Ilosc turystow: {%turysta%}; Ilosc malych domow: {%iloscmalydom%} Ilosc altan: {%iloscaltana%}; Ilosc apartamentow: {%iloscapartament%} Ilosc domow: {%iloscdom%} Ilosc wierzowcow: {%iloscwierzowiec%}; Ilosc kupionych MiniLotto: {%iloscminilotto%} Ilosc wygranych MiniLotto: {%wygranaminilotto%}; Ilosc kupionych Lotto: {%ilosclotto%} Ilosc wygranych Lotto: {%wygranalotto%} Ilosc przegranych Lotto: {%przegranalotto%}; Ilosc kupionych Lotto+: {%ilosclottoplus%} Ilosc wygranych Lotto+: {%wygranalottoplus%} Ilosc Przegranych Lotto+: {%przegranalottoplus%}; Ilosc kupionych Lotto Pro: {%ilosclottopro%} Ilosc wygranych Lotto Pro: {%wygranalottopro%} Ilosc przegranych Lotto Pro: {%przegranalottopro%}; Ilosc kupionych Lotto Max: {%ilosclottomax%} Ilosc wygranych Lotto Max: {%wygranalottomax%} Ilosc przegranych Lotto Max: {%przegranalottomax%} > Statystyki.txt
goto gra

:rgra
cls
set /a rebirph=rebirph+1
echo Trwa resetowanie statystyk ...
ping localhost-n 1 >nul
echo Statystyki zostaly zapisane i zresetowane!
echo Nacisnij dowolny klawisz, aby przejsc do wyboru informacji o burmistrzu
pause>nul
goto gra