#===============================#
#                               #
# NOM : scriptProcessusWindows  #
# AUTEUR : TERPREAU Maximilien  #
# DATE : 13 mars 2024 à 11h15   #
#                               #
#===============================#

<# Exercice 1 - 2 | Code servant à afficher les processus de WindowsServer #>

Get-Process -Name svchost | Format-table "Id","ProcessName"
