echo -e '\e[93m               
                         __________
                      .~#########%%;~.
                     /############%%;`\
                    /######/~\/~\%%;,;,\
                   |#######\    /;;;;.,.|
                   |#########\/%;;;;;.,.|
          XX       |##/~~\####%;;;/~~\;,|       XX
        XX..X      |#|  o  \##%;/  o  |.|      X..XX
      XX.....X     |##\____/##%;\____/.,|     X.....XX
 XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX
X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X
X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X'
echo -e '\e[94mX  \...X     @#%,.@   ----------------    @ @ 00 0 xxxxxxxxx
 X# \.X        @#%,.@  IP Information  @#%,.@        
                @#%,.@               @#%,.@          
                  @#%,.@           @#%,.@            
                     @#%,.@      @#%,.@             
                       @#%.,@  @#%,.@              
                        keshav Gupta
               INSTAGRAM:- official_.keshav'
                echo -e '\e[91m CODED BY KESHAV'


if [ -f "pop.txt" ];
then
rm pop.txt
fi
ipp=$1
echo $ipp
curl -o pop.txt "https://ipgeolocation.abstractapi.com/v1/?api_key=817c260ae19b4c2981045f2d2fb00ace&ip_address=$ipp"

cty=$(sed -E 's/.*"city":"?([^,"]*)"?.*/\1/' pop.txt)
postal=$(sed -E 's/.*"postal_code":"?([^,"]*)"?.*/\1/' pop.txt)
ip=$(sed -E 's/.*"ip_address":"?([^,"]*)"?.*/\1/' pop.txt)
reg=$(sed -E 's/.*"region":"?([^,"]*)"?.*/\1/' pop.txt)
ctry=$(sed -E 's/.*"country":"?([^,"]*)"?.*/\1/' pop.txt)
cont=$(sed -E 's/.*"continent":"?([^,"]*)"?.*/\1/' pop.txt)
currency=$(sed -E 's/.*"currency_name":"?([^,"]*)"?.*/\1/' pop.txt)
geoname=$(sed -E 's/.*"continent_geoname_id":"?([^,"]*)"?.*/\1/' pop.txt)
code=$(sed -E 's/.*"country_code":"?([^,"]*)"?.*/\1/' pop.txt)

echo "your id:- $ip"
echo "postalcode:- $postal"
echo "city:- $cty"
echo "currency:- $currency"
echo "geoname:- $geoname"
echo "code:- $code"
echo "your region:- $reg"
echo "contry:- $ctry"
echo "continet:- $cont"
