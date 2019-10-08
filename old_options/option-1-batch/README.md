## Option 1 - batch file

Le but de cette option serait d'écraser le disque virtuel par un disque de défaut à chaque démarrage de la machine virtuelle. Si c'est possible, il faudrait que ce script remplace le raccourci du bureau vers VMware Player.

### vmware_run.bat

Le batch file écrase le disque virtuel `c:\windows 7\Windows 7.vmdk` (ou bien `Windows 7-000X.vmdk` dépendamment du poste) par celui de défaut `c:\windows 7\Windows 7-defaut.vmdk`. 

Une fois la copie terminée, VMware Player est lancée avec le fichier .vmx de la VM comme paramètre (Windows 7 ouvrira automatiquement). Donc l'étudiant n'aura pas à effectuer l'étape sur la fenêtre d'accueil de VMware.

#### Points soulageants de cette option

* Peu importe ce qu'un étudiant fait sur la VM, on peut toujours revenir à un état de défaut.

* Si par malheur la machine virtuelle d'un étudiant ferme sans qu'il n'est sauvegardé ses fichiers RSS, il est toujours possible d'ouvrir la machine virtuelle manuellement pour éviter que le disque virtuel soit écrasé.


#### Points moins plaisant

* Ça prend du temps copier un fichier vmdk...

* Ça dépend des droits des étudiants sur les postes du local. Il faudrait avoir la permission de rouler des .bat et mettre un raccourci sur le bureau.
