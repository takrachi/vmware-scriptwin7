# Cherche les fichiers d'extensions RSS recursivement dans C:\Users\ puis les supprime 
Get-ChildItem "C:\Users\" -include *.rss -recurse | foreach { Remove-Item -Path $_.FullName }

# Vide la corbeille
$Shell = New-Object -ComObject Shell.Application 
$RecycleBin = $Shell.Namespace(0xA) 
$RecycleBin.Items() | %{Remove-Item $_.Path -Recurse -Confirm:$false}
# Si la machine virtuelle a Powershell v.5 on peut remplacer le script pour vider la corbeille par
#Clear-RecycleBin -Force
