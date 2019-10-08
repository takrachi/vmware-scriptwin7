@echo off

rem chemins ou se trouvent les fichiers .vmdk et .vmx
set vm_path="C:\windows 7\"
set vmdk_default=%vm_path%"windows 7-default.vmdk"
set vmdk_current=%vm_path%"windows 7.vmdk"
set win7vmx=%vm_path%"windows 7.vmx"
rem chemin de l'executable vmplayer.exe
set vmplayerexe="C:\Program Files (x86)\VMware\VMware Player\vmplayer.exe"

rem ecrase le disque virtuel utilise par la vm avec le disque virtuel de defaut
echo [*] Initialisation de la machine virtuelle. Veuillez patienter...
echo    [+] Creation du disque virtuel.
start /min /wait xcopy /y %vmdk_default% %vmdk_current%
echo    [+] Lancement de la machine virtuelle.
timeout /t 2 /nobreak > NUL

rem demarre la machine virtuelle Windows 7
start /b %vmplayerexe% %win7vmx%
