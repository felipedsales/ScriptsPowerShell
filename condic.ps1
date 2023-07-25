#Segundo Script em PowerShell
param($p1)
if (!$p1){
    echo "PING SWEEP"
    echo "Exemplo de Uso: .\script.ps1 192.168.0"
}else {
foreach ($ip in 1..254){
try {
    echo "Efetuando Ping no Host: $ip"
    $resp = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
    $resp.Line.split(' ')[2] -replace ":",""
} catch {}
}
}
