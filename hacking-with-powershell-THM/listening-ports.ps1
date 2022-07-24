$system_ports = Get-NetTCPConnection -State Listen
$text_port = Get-Content "C:\Users\docja\OneDrive\Desktop\ports.txt"
foreach($port in $text_port){
    if($port -in $system_ports.LocalPort){
        echo $port
    }
}