$site = Read-Host "Digite o URL do Site: "
$web = Invoke-WebRequest -uri "$site" -Method Options
echo "Esse Site Roda em um Servidor: "
$web.headers.server
echo ""
echo "Esse Servidor Aceita os Métodos: "
$web.headers.allow
echo ""
echo "Links Encontrados: "
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href