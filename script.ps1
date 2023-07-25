#Primeiro Script em PowerShell
param($ip)
if (!$ip){
    echo "POWER SHELL"
    echo "Exemplo de Uso: .\script.ps1 192.168.0.1"
} 
else{
    echo "Efetuando Ping no Host: $ip"
    ping -n 1 $ip | Select-String "bytes=32"
}
