# Azure Static Website avec Terraform

Ce projet déploie un **site web statique HTML/CSS/JavaScript** sur **Azure Storage Static Website** en utilisant **Terraform**.

## Architecture

```
.
├── terraform/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
└── website/
    ├── index.html
    ├── style.css
    ├── script.js
    └── 404.html
```

## Prérequis

- Terraform >= 1.13
- Azure CLI
- Un abonnement Azure
- Les droits de création de ressources Azure

## Installation

### 1. Se connecter à Azure

```bash
az login
```

Vérifier le compte utilisé :

```bash
az account show
```

Si plusieurs abonnements sont disponibles :

```bash
az account set --subscription "<subscription-id>"
```

---

### 2. Initialiser Terraform

Depuis le dossier `terraform` :

```bash
terraform init
```

---

### 3. Vérifier le plan

```bash
terraform plan
```

---

### 4. Déployer l'infrastructure

```bash
terraform apply
```

Confirmer avec :

```
yes
```

À la fin du déploiement, Terraform affiche l'URL du site.

Exemple :

```
https://monsite.z6.web.core.windows.net/
```

---

## Déploiement du site

Le dossier `website` contient :

```
website/
├── index.html
├── style.css
├── script.js
└── 404.html
```

Pour publier le contenu :

```bash
az storage blob upload-batch \
    --account-name <storage-account-name> \
    --destination '$web' \
    --source ../website
```

Exemple :

```bash
az storage blob upload-batch \
    --account-name monsiteweb2026 \
    --destination '$web' \
    --source ../website
```

Quelques secondes plus tard, le site est accessible.

---

## Mise à jour du site

Après modification des fichiers HTML, CSS ou JavaScript :

```bash
az storage blob upload-batch \
    --account-name <storage-account-name> \
    --destination '$web' \
    --source ../website \
    --overwrite
```

---

## Destruction de l'infrastructure

Pour supprimer toutes les ressources Azure :

```bash
terraform destroy
```

---

## Structure Terraform

Le projet crée :

- Un Resource Group
- Un Storage Account
- Un site web statique Azure Storage

---

## Coût

Le coût est généralement très faible :

- Azure Storage Standard LRS
- Facturation selon l'espace utilisé et le trafic

Pour un petit site vitrine, le coût est souvent de quelques centimes d'euros par mois.

---

## Améliorations possibles

- Azure Front Door
- Azure CDN
- Nom de domaine personnalisé
- HTTPS avec certificat personnalisé
- GitHub Actions
- Backend Terraform Azure Storage
- Azure Key Vault
- Monitoring avec Azure Monitor

---

## Nettoyage

Supprimer toutes les ressources :

```bash
terraform destroy
```

---

## Auteur

Projet de démonstration Terraform + Azure Storage Static Website.