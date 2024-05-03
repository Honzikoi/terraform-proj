Bonjour,

Voici les commandes terraform que j'ai executer :
1. Terraform fmt   # Pour formater le code.
2. Terraform init  # Initier Terraform dans le projet.
3. Terraform plan  # Test d'infrastructure.
4. Terraform apply # Lance les resultats du plan.

Concernant les variables, ils sont tous construit par rapport aux valeurs d'une instance VM de Google Cloud. Les descriptions des variables decrivent plus a quoi elles servent.

Fichier outputs.tf pour que terraform log des informations importantes lors de la création de l'instance VM.

Et finalement le fichier providers.tf pour gerer les lifecycle des resources. Permettant a Terraform de batir les bonnes infrastructures (AWS, AZURE ou GCP).

Fichier main.tf contenant 2 resources, la premiere qui fourni les informations pour la creation de l'instance a partir des variables fournis, ainsi que des commandes de creation de fichier txt et lancement du script.sh (script commenté pour chaque commande).
La deuxieme resource est sensé d'ouvrir les ports SSH, HTTP et HTTPS de la VM.

P.S. qq hotfix rapide du code.