#========================================#
#                           	         #
# NOM : scriptProsessusWindows(Fichiers) #
# AUTEUR : TERPREAU Maximilien           #
# DATE : 20 mars 2024 à 11h15            #
#                           	         #
#========================================#

<# Permet de rentrer les résulats dans un fichier .txt et .csv #>

[bool]$existeDossier = Test-Path "C:\sauvegardeSituation8_CUB\"
[bool]$existeFichierTxt =  Test-Path "C:\sauvegardeSituation8_CUB\sauvegarde.txt"
[bool]$existeFichierCsv =  Test-Path "C:\sauvegardeSituation8_CUB\sauvegarde.csv"

if ($existe -eq $false)
{
    New-Item "C:\sauvegardeSituation8_CUB\" -itemType Directory
    
    }else{

    Write-Host "Le dossier existe déjà, on passe à la suite."

    if ($existeFichierTXT -eq $true)
    {
        Write-Host "Le fichier sauvegarde.txt existe déjà."
        }else{ 
        New-Item "C:\sauvegardeSituation8_CUB\sauvegarde.txt" -itemType File
    }

    if ($existeFichierCSV -eq $true)
    {
        Write-Host "Le fichier sauvegarde.csv existe déjà."
        }else{
        New-Item "C:\sauvegardeSituation8_CUB\sauvegarde.csv" -itemType File
        }
}

[string]$processus = Read-Host 'Quel processus désirez-vous voir?'

Do {
    If ($réponse -eq 'Y') {
        [string]$processus = Read-Host 'Lequel ?'
        } 
    $tableau = Get-Process | Where-Object {$_.ProcessName -like "$processus"}
    $tableau | Format-Table Id, Name, Description | Out-File "C:\sauvegardeSituation8_CUB\sauvegarde.txt" -Encoding utf8
    $tableau | Export-Csv "C:\sauvegardeSituation8_CUB\sauvegarde.csv" -Delimiter ","  
    [string]$réponse = Read-Host 'Voulez-vous voir un autre processus? (Y ou n)'

} While ($réponse -eq 'Y')

Write-Host 'Au revoir!'