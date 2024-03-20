#========================================#
#                           	         #
# NOM : scriptProsessusWindows(Fichiers) #
# AUTEUR : TERPREAU Maximilien           #
# DATE : 20 mars 2024 à 11h15            #
#                           	         #
#========================================#

<# Permet de rentrer les résulats dans un fichier .txt et .csv #>

[bool]$existe = Test-Path "C:\sauvegardeSituation8_CUB\"

if ($existe -eq $false)
{
    Write-Host "Le dossier n'existe pas. Je vais le créer." 
    New-Item "C:\sauvegardeSituation8_CUB\" -itemType Directory
    Write-Host "Dossier créer, on passe à la suite" 
    
    }else{

    Write-Host "Le dossier existe déjà, on passe à la suite."
}

