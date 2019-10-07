## vmware-scriptwin7
Scripts batch et Powershell permettant l'initialisation du disque virtuel d'une machine virtuelle et/ou supprimer les fichiers RSS de la machine.


### [Option 1 - batch file](https://github.com/takrachi/vmware-scriptwin7/tree/master/option-1-batch)

Le but de cette option serait d'écraser le disque virtuel utilisé par la machine virtuelle par un disque de défaut à chaque démarrage de la machine par l'étudiant. Si c'est possible, il faudrait que ce script remplace le raccourci du bureau vers VMware Player.


### [Option 2 - Group Policy Object/Editor](https://github.com/takrachi/vmware-scriptwin7/tree/master/option-2-GPO-Powershell)

Cette option aurait pour but d'associer un script Powershell à un événement dans la machine virtuelle. On peut associer un script Powershell lorsque l'usager de la VM se déconnecte (ou bien l'éteint).

### [Option 3 - Script sur le bureau de la machine virtuelle](https://github.com/takrachi/vmware-scriptwin7/tree/master/option-3-scriptbureau)

On pourrait avoir un script Powershell ou un batch file directement sur le bureau dans la machine virtuelle que l'étudiant pourrait exécuter lorsqu'il veut faire le ménage de sa machine virtuelle.

