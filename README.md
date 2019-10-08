## vmware-scriptwin7

Script Powershell permettant de nettoyer les fichiers RSS et zip d'un utilisateur et de vider la corbeille.

On pourrait avoir un script Powershell/batch file directement sur le bureau de la machine virtuelle que l'étudiant pourrait exécuter lorsqu'il veut faire le ménage de sa machine.

### Nettoyage.ps1

L'etudiant aurait un raccourci sur le bureau de la machine virtuelle qui executerait le script [Nettoyage.ps1](http://github.com/takrachi/wmare-scriptwin7/blob/master/Nettoyage.ps1)

#### Procedure

1. Deposer le script Nettoyage.ps1 sur la VM dans `C:\Windows\`
1. Creer un Raccourci sur le bureau
1. Inscrire dans la location du Raccourci : `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noexit -ExecutionPolicy Bypass -windowstyle hidden -File C:\Windows\Nettoyage.ps1`
1. Inscrire `Nettoyage` comme nom pour le Raccourci
1. Changer l'icon si necessaire
