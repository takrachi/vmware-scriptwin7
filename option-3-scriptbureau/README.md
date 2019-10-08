## Option 3 - Script sur le bureau de la machine virtuelle

On pourrait avoir un script Powershell/batch file directement sur le bureau de la machine virtuelle que l'étudiant pourrait exécuter lorsqu'il veut faire le ménage de sa machine.

### nettoyage.ps1

Le script est le même que celui pour [l'option 2](https://github.com/takrachi/vmware-scriptwin7/tree/master/option-2-GPO-Powershell). On pourrait faire un `.bat` aussi.




Créer un shortcut avec : C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noexit -ExecutionPolicy Bypass -windowstyle hidden -File c:\Windows\Nettoyage.ps1



Deposer nettoyage.ps1 dans C:/Windows
