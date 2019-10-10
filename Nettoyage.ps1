# MessageBox de confirmation
Add-Type -AssemblyName System.Windows.Forms
$Titre = "Suppression des fichiers RSS"
$Message = @("Vous êtes sur le point de supprimer définitivement vos fichiers RSS.`n`n"
            "Souhaitez-vous continuer?`n`n"
            ) -join ''
$Result = [System.Windows.Forms.MessageBox]::Show($Message, $Titre, 'YesNo', 'Warning', "Button2")     

if ($Result -eq 'Yes') { # Oui
    # Cherche les fichiers d'extensions RSS et zip recursivement dans C:\Users\ puis les supprime 
    Get-ChildItem "C:\Users\" -include *.rss -recurse | foreach { Remove-Item -Path $_.FullName }
    Get-ChildItem "C:\Users\" -include *.zip -recurse | foreach { Remove-Item -Path $_.FullName }

    # Vide la corbeille
    $Shell = New-Object -ComObject Shell.Application 
    $RecycleBin = $Shell.Namespace(0xA) 
    $RecycleBin.Items() | %{ Remove-Item $_.Path -Recurse -Confirm:$false }
    
    [System.Windows.Forms.MessageBox]::Show("Vos fichiers ont été supprimés.`n", "Suppression terminée", 'OK') 
}
else { # Non
    [System.Windows.Forms.MessageBox]::Show("Opération annulée.`n", "Suppression annulée", 'OK') 
}
