$ontext
Author:Anthony Gardella

This is a simple solow-swan economic growth model for 150 countries. It
includes labor,capital,technology, emissions,depreciation, and investment parameters
in 5 year increments from 2010 to 2100.

COUNTRY INDEX
ARG        Argentina              GHA        Ghana         NGA        Nigeria
ARM        Armenia                GRC        Greece        NOR        Norway
AUS        Australia              GTM        Guatemala     OMN        Oman
AUT        Austria                GIN        Guinea        PAK        Pakistan
AZE        Azerbaijan             GNB        Guinea-Bissau PAN        Panama
BHS        Bahamas                HND        Honduras      PRY        Paraguay
BHR        Bahrain                HUN        Hungary       PER        Peru
BGD        Bangladesh             ISL        Iceland       PHL        Philippines
BRB        Barbados               IND        India         POL        Poland
BLR        Belarus                IDN        Indonesia     PRT        Portugal
BEL        Belgium                IRN        Iran          QAT        Qatar
BLZ        Belize                 IRQ        Iraq          ROU        Romania
BEN        Benin                  IRL        Ireland       RUS        Russia
BTN        Bhutan                 ISR        Israel        RWA        Rwanda
BOL        Bolivia                ITA        Italy         STP        Sao Tome and Principe
BIH        Bosnia and Herzegovina JAM        Jamaica       SAU        Saudi Arabia
BWA        Botswana               JPN        Japan         SEN        Senegal
BRA        Brazil                 JOR        Jordan        SRB        Serbia
BRN        Brunei                 KAZ        Kazakhstan    SLE        Sierra Leone
BGR        Bulgaria               KEN        Kenya         SGP        Singapore
BFA        Burkina Faso           KOR        Korea         SVK        Slovak Republic
BDI        Burundi                KWT        Kuwait        SVN        Slovenia
KHM        Cambodia               KGZ        Kyrgyzstan    ZAF        South Africa
CMR        Cameroon               LAO        Laos          ESP        Spain
CAN        Canada                 LVA        Latvia        LKA        Sri Lanka
CHL        Chile                  LBN        Lebanon       SDN        Sudan
CHN        China                  LSO        Lesotho       SUR        Suriname
COL        Colombia               LBR        Liberia       SWZ        Swaziland
COM        Comoros                LTU        Lithuania     SWE        Sweden
CRI        Costa Rica             LUX        Luxembourg    CHE        Switzerland
CIV        Cote d`Ivoire          MKD        Macedonia     SYR        Syria
HRV        Croatia                MDG        Madagascar    TJK        Tajikistan
CYP        Cyprus                 MWI        Malawi        TZA        Tanzania
CZE        Czech Republic         MYS        Malaysia      THA        Thailand
DNK        Denmark                MDV        Maldives      TGO        Togo
DJI        Djibouti               MLI        Mali          TTO        Trinidad & Tobago
DOM        Dominican Republic     MLT        Malta         TUN        Tunisia
ECU        Ecuador                MRT        Mauritania    TUR        Turkey
EGY        Egypt                  MUS        Mauritius     TKM        Turkmenistan
SLV        El Salvador            MEX        Mexico        UGA        Uganda
GNQ        Equatorial Guinea      MDA        Moldova       UKR        Ukraine
EST        Estonia                MNG        Mongolia      GBR        United Kingdom
ETH        Ethiopia               MNE        Montenegro    USA        United States
FJI        Fiji                   MAR        Morocco       URY        Uruguay
FIN        Finland                MOZ        Mozambique    UZB        Uzbekistan
FRA        France                 NAM        Namibia       VEN        Venezuela
GAB        Gabon                  NPL        Nepal         VNM        Vietnam
GMB        Gambia                 NLD        Netherlands   YEM        Yemen
GEO        Georgia                NZL        New Zealand   ZMB        Zambia
DEU        Germany                NER        Niger         ZWE        Zimbabwe



$offtext

$title    GE512 Integrated Assesment Model

sets
         t               time                    /2010,2015,2020,2025,2030,2035,
         2040,2045,2050,2055,2060,2065,2070,2075,2080,2085,2090,2095,2100/

         c               countries               /ARG,ARM,AUS,AUT,AZE,BHS,BHR,
         BGD,BRB,BLR,BEL,BLZ,BEN,BTN,BOL,BIH,BWA,BRA,BRN,BGR,BFA,BDI,KHM,CMR,
         CAN,CHL,CHN,COL,COM,CRI,CIV,HRV,CYP,CZE,DNK,DJI,DOM,ECU,EGY,SLV,GNQ,
         EST,ETH,FJI,FIN,FRA,GAB,GMB,GEO,DEU,GHA,GRC,GTM,GIN,GNB,HND,HUN,ISL,
         IND,IDN,IRN,IRQ,IRL,ISR,ITA,JAM,JPN,JOR,KAZ,KEN,KOR,KWT,KGZ,LAO,LVA,
         LBN,LSO,LBR,LTU,LUX,MKD,MDG,MWI,MYS,MDV,MLI,MLT,MRT,MUS,MEX,MDA,MNG,
         MNE,MAR,MOZ,NAM,NPL,NLD,NZL,NER,NGA,NOR,OMN,PAK,PAN,PRY,PER,PHL,POL,
         PRT,QAT,ROU,RUS,RWA,STP,SAU,SEN,SRB,SLE,SGP,SVK,SVN,ZAF,ESP,LKA,SDN,
         SUR,SWZ,SWE,CHE,SYR,TJK,TZA,THA,TGO,TTO,TUN,TUR,TKM,UGA,UKR,GBR,USA,
         URY,UZB,VEN,VNM,YEM,ZMB,ZWE
         /
         r regions / USA, CAN, WEU, JPK, ANZ, EEU, FSU, MDE, CAM, SAM, SAS, SEA,
         CHI,NAF, SSA, SIS/

         rcmap(*,*) regional map /
         USA.(USA)
         CAN.(CAN)
         WEU.(AUT, BEL, CYP, DNK, FIN, FRA,DEU, GRC, ISL, IRL, ITA,LUX,
              MLT,NLD, NOR, PRT,ESP, SWE, CHE, GBR)
         JPK.(JPN,KOR)
         ANZ.(AUS, NZL)
         EEU.(BIH,BGR,HRV,CZE,HUN,MKD,MNE,POL,ROU,SRB,SVK,SVN)
         FSU.(ARM, AZE, BLR, EST, GEO, KAZ,KGZ, LVA, LTU, MDA,RUS, TJK,
              TKM, UKR, UZB)
         MDE.(BHR, IRN, IRQ, ISR, JOR, KWT, LBN, OMN,QAT,SAU, SYR, TUR,YEM)
         CAM.(BLZ, CRI, SLV, GTM, HND, MEX, PAN)
         SAM.(ARG, BOL, BRA, CHL, COL, ECU,PRY,PER,SUR,URY,VEN)
         SAS.(BGD, BTN, IND, NPL, PAK,LKA)
         SEA.(BRN, KHM, IDN, LAO, MYS, PHL, SGP, THA, VNM)
         CHI.(CHN, MNG)
         NAF.( EGY, MAR, TUN)
         SSA.(BEN, BWA, BFA, BDI,CMR, CIV,DJI,GNQ, ETH, GAB, GMB, GHA, GIN,
              GNB, KEN, LSO, LBR, MDG, MWI,MLI, MRT, MOZ, NAM, NER, NGA,
              RWA, SEN, SLE, ZAF, SDN,SWZ, TZA, TGO,UGA, ZMB, ZWE)
         SIS.(BHS, BRB,COM,DOM,FJI,JAM,MDV,MUS, STP, TTO)
         /


;




parameters
         nyper               timestep                                 /5/
         lshr                labor share                              /0.66/
         omega               damage                                   /0/
         prodgr1             dummy productivity growth rate           /0.1/
         delta1              dummy depreciation rate                  /0.02/
         s1                  dummy savings rate                       /0.2/
         t2mt                tons to gigtons                          /1e6/
         mt2gt               megatons                                 /1e3/
         lpart(c)            labor participation rate
         delta(c)            depreciation
         k(t,c)              capital
         i(t,c)              investment
         s(c)                savings
         y_gross(t,c)        output
         y_net(t,c)          income net of damages
         a(t,c)              initial tech
         l(t,c)              labor
         emiss_count(t,c)    emissions
         aeei(t,c)           Autonomous energy emissionintensity
         pro(t,c)            productivity trend
         emiss_int(t,c)      emissions intensity
         world_emissions(t)  total emissions
         e_intensity(c)      emissions intensity
         y_region(t,r)
         y_percapita_region(t,r)
         emiss_region(t,r)
         y_world(t)
         y_percapita_world(t)

* Economy derivative variables
        Y_pc(t,c)           "Per capita income in nation c at time t"
        Y_pc_growth(t,c)    "Per captia income growth in nation c at time t"
        Y_dens(t,c)         "Income density of region t at time r"
        Y_dens_growth(t,c)  "Income density growth of region t at time r"
        P_dens(t,c)         "Population density of nation c at time t"
        P_growth(t,c)       "Population growth rate of nation c at time t"

$include mosaic_carbon_dec.gms


$ontext
Units:
K=2010 Capital stock at current PPPs (in mil. 2005US$) (ppp=purchasing power parity)
rgdpl= 2010 PPP Converted GDP Per Capita (Laspeyres), derived from growth rates of c, g, i, at 2005 constant prices
s = 2010 Investment Share of PPP Converted GDP Per Capita at 2005 constant prices [rgdpl]
y = 2010 GDP at 2005 constant prices
e =total GHG Emissions Including Land-Use Change and Forestry (MtCO2)
population = thousands persons
epsilon = $gdp/MtCarbon
$offtext



table initparam(*,*)
$ondelim
$include initparams.csv
$offdelim
;

table pop(*,*)
$ondelim
$include population.csv
$offdelim
;

table aeeidata(*,*)
$ondelim
$include aeei_interp.csv
$offdelim
;
table prodgr(*,*)
$ondelim
$include gdp_grate.csv
$offdelim
;


         lpart(c)          =     initparam("lpart",c);

         k("2010",c)       =     initparam("k",c);

         s(c)              =     initparam("s",c);

         y_gross("2010",c) =     initparam("y",c);

         e_intensity(c)    =     initparam("e_intensity",c);

         delta(c)          =     initparam("delta",c);

         l(t,c)            =     (0.01*lpart(c))*(pop(t,c));

         pro("2010",c)       =     y_gross("2010",c) / [ l("2010",c)**lshr * k("2010",c)**(1 - lshr)];

         emiss_count("2010",c)       =     initparam("e",c);

         aeei(t,c)         =    0.01 *sum(rcmap(r,c), aeeidata(t,r));

         pro(t,c)= pro("2010",c) * (1+prodgr(t,c))**(nyper*(ord(t)-1));

         emiss_int("2010",c)     =     e_intensity(c);

         emiss_int(t,c)= emiss_int("2010",c)* (1 + aeei(t,c))**(nyper*(ord(t)-1));




loop(t,

*GLOBAL Solow-Swan economic growth model
         y_gross(t,c)=pro(t,c)*l(t,c)**(lshr) * k(t,c)**(1-lshr);

         y_net(t,c)= (1-omega) * y_gross(t,c);

         i(t,c)=s(c)*y_net(t,c)*nyper;

         k(t+1,c)=i(t,c)+(1-delta(c))**nyper *k(t,c);

         emiss_count(t,c)=(emiss_int(t,c) * y_net(t,c))/t2mt;

         y_pc(t,c)   =   y_gross(t,c)/pop(t,c)  ;

*Output and emissions by region

         y_region(t,r)= sum(rcmap(r,c),y_net(t,c));

         y_percapita_region(t,r) = sum(rcmap(r,c),y_pc(t,c));

         emiss_region(t,r) = sum(rcmap(r,c),emiss_count(t,c));
*Output and emission of the world

         y_world(t)= sum(r,y_region(t,r));

         y_percapita_world(t) = sum(r,y_percapita_region(t,r));

         world_emissions(t)  = sum( c, emiss_count(t,c))/mt2gt;

$batinclude mosaic_carbon_exe.gms

);

display     y_region, world_emissions,y_net,y_pc, TATM

$include SolowSwanResults.gms

