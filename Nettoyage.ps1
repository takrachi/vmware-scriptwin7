# Popup de confirmation
$Titre = "Suppression des fichiers RSS"
$Message = @("Vous êtes sur le point de supprimer définitivement vos fichiers RSS.`n`n"
            "Souhaitez-vous continuer?`n`n"
            ) -join ''
Add-Type -AssemblyName System.Windows.Forms
$Result = [System.Windows.Forms.MessageBox]::Show($Message, $Title, 'YesNo', 'Warning', "Button2")     

if ($Result -eq 'Yes') { # Oui
    # Cherche les fichiers d'extensions RSS et zip recursivement dans C:\Users\ puis les supprime 
    Get-ChildItem "C:\Users\" -include *.rss -recurse | foreach { Remove-Item -Path $_.FullName }
    Get-ChildItem "C:\Users\" -include *.zip -recurse | foreach { Remove-Item -Path $_.FullName }

    # Vide la corbeille
    $Shell = New-Object -ComObject Shell.Application 
    $RecycleBin = $Shell.Namespace(0xA) 
    $RecycleBin.Items() | %{ Remove-Item $_.Path -Recurse -Confirm:$false }
    
    [System.Windows.Forms.MessageBox]::Show($Message, $Title, 'YesNo', 'Warning', "Button2") 
    $Shell_VB.popup("Vos fichiers ont été supprimés.`n", 0, "Suppression terminée")
}
else { # Non
    [System.Windows.Forms.MessageBox]::Show($Message, $Title, 'YesNo', 'Warning', "Button2") 
    $Shell_VB.popup("Opération annulée.`n", 0, "Suppression annulée")
}
