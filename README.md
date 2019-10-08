## vmware-scriptwin7

Script Powershell permettant de nettoyer les fichiers RSS et zip d'un utilisateur et de vider la corbeille.

### Nettoyage.ps1

Il y aurait un raccourci vers un script Powershell ([Nettoyage.ps1](https://github.com/takrachi/vmware-scriptwin7/blob/master/Nettoyage.ps1)) sur le bureau de la machine virtuelle que l'étudiant pourrait exécuter lorsqu'il veut faire le ménage de sa machine.  

#### Procedure

1. Déposer le script Nettoyage.ps1 sur la VM dans `C:\Windows\`
1. Créer un Raccourci sur le bureau
1. Inscrire dans la location du Raccourci : `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noexit -ExecutionPolicy Bypass -windowstyle hidden -File C:\Windows\Nettoyage.ps1`
1. Choisir un nom pour le Raccourci (Ex.: Nettoyage)
1. Changer l'icon si nécessaire
