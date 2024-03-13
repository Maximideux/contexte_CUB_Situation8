#===============================#
#                           	#
# NOM : scriptProsessusWindows  #
# AUTEUR : TERPREAU Maximilien  #
# DATE : 13 mars 2024 à 11h15   #
#                           	#
#===============================#

[string]$paramètre = Read-Host 'Quel processus désireriez-vous voir?'

Do {
    [string]$réponse = Read-Host 'Voulez-vous voir un autre processus? (Y ou n)'
} While ($réponse -eq 'Y')
