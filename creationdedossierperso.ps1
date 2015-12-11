$utils=import-csv -delimiter ";" -path ".\users2.csv"
foreach ($util in $utils)
{
$Nomdedossier=$util.fullname
$service=$util.service
$chemin="\\cimenttech.loc\stockage\utilisateurs\Commun $service"
New-Item -ItemType "directory" -name $nomdedossier -path $chemin # Nouvel objet de type « repertoire » avec nom variable et dossier variable selon le service.
}
