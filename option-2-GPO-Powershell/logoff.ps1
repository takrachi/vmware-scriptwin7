# Cherche les fichiers d'extensions RSS recursivement dans C:\Users\ puis les supprime 
Get-ChildItem "C:\Users\" -include *.rss -recurse | foreach { Remove-Item -Path $_.FullName }

# Vide la corbeille
$Shell = New-Object -ComObject Shell.Application 
$RecycleBin = $Shell.Namespace(0xA) 
$RecycleBin.Items() | %{Remove-Item $_.Path -Recurse -Confirm:$false}
