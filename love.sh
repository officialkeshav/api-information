if [ -f "pop.txt" ];
then
rm pop.txt
fi
ipp=$1
echo $ipp
curl -o pop.txt "https://ipgeolocation.abstractapi.com/v1/?api_key=817c260ae19b4c2981045f2d2fb00ace&ip_address=$ipp"
name=$(sed -E 's/.*"city":"?([^,"]*)"?.*/\1/' pop.txt)
postal=$(sed -E 's/.*"postal_code":"?([^,"]*)"?.*/\1/' pop.txt)
ip=$(sed -E 's/.*"ip_address":"?([^,"]*)"?.*/\1/' pop.txt)
echo "your id:- $ip"
echo "code:- $postal"
echo "city:- $name"


