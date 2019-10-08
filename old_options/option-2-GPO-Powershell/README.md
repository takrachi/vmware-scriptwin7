## Option 2 - Group Policy Object/Editor

Cette option aurait pour but d'associer un script Powershell à un événement dans la machine virtuelle. On peut associer un script Powershell lorsque l'usager de la VM se déconnecte (ou bien l'éteint).

### logoff.ps1

Le script Powershell supprime les fichiers d'extension `.rss` récursivement à partir de `c:\Users\` puis il vide la corbeille.

Le script doit être déposé sur la machine virtuelle dans le chemin `c:\Windows\System32\GroupPolicy\User\Scripts\Logoff`

### Vérification de la permission de script Powershell

Il se peut qu'il faut permettre à la machine d'exécuter des fichiers Powershell. Pour ce faire, il faut entrer cette commande dans un command prompt : 

```Powershell
powershell Set-ExecutionPolicy RemoteSigned
```

### Procédure

1. Lancer la machine virtuelle
1. Menu démarrer de Windows
1. Chercher gpedit.msc
1. Dans GPE, naviguer dans `User Configuration\Policies\Windows Settings\Scripts (Logon/Logoff)`
1. Sélectionner `Logoff` puis `Add a Script`
1. Chercher le script logoff.ps1
