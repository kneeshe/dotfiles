while [ 1 ]
do
    weather=$(curl -Ss 'https://wttr.in/Ribeirao_Preto?format=%t')
    echo "$weather"
    sleep 60
done
