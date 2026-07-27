# AZ-104 Labs - Microsoft Azure Administrator

Ce dépôt regroupe une série de projets pratiques réalisés avec **Terraform** afin de préparer la certification **AZ-104 - Microsoft Azure Administrator Associate**.

L'objectif est de reproduire des scénarios d'infrastructure courants sur Microsoft Azure tout en appliquant les bonnes pratiques d'Infrastructure as Code (IaC).

---

# Objectifs

- Maîtriser les principaux services Azure
- Automatiser le déploiement avec Terraform
- Comprendre l'architecture Cloud Azure
- Préparer efficacement la certification AZ-104
- Constituer un portfolio de projets Azure

---

# Technologies

- Microsoft Azure
- Terraform
- Azure CLI
- Git
- GitHub
- Visual Studio Code

---

# Prérequis

- Un abonnement Microsoft Azure
- Terraform >= 1.13
- Azure CLI
- Git
- Visual Studio Code

---

# Structure du dépôt

```
AZ104-Labs/
│
├── Lab01-StaticWebsite/
├── Lab02-VirtualNetwork/
├── Lab03-LinuxVM/
├── Lab04-WindowsVM/
├── Lab05-NetworkSecurityGroup/
├── Lab06-AzureBastion/
├── Lab07-StorageAccount/
├── Lab08-AzureFiles/
├── Lab09-ManagedDisks/
├── Lab10-LoadBalancer/
├── Lab11-ApplicationGateway/
├── Lab12-VMScaleSet/
├── Lab13-KeyVault/
├── Lab14-RBAC/
├── Lab15-ManagedIdentity/
├── Lab16-Backup/
├── Lab17-AzureMonitor/
├── Lab18-LogAnalytics/
├── Lab19-AppService/
├── Lab20-FinalProject/
│
└── README.md
```

---

# Progression

| Lab | Sujet | Statut |
|------|--------|:------:|
| 01 | Azure Storage Static Website | ✅ |
| 02 | Virtual Network | ⬜ |
| 03 | Linux Virtual Machine | ⬜ |
| 04 | Windows Virtual Machine | ⬜ |
| 05 | Network Security Group | ⬜ |
| 06 | Azure Bastion | ⬜ |
| 07 | Storage Account | ⬜ |
| 08 | Azure Files | ⬜ |
| 09 | Managed Disks | ⬜ |
| 10 | Load Balancer | ⬜ |
| 11 | Application Gateway | ⬜ |
| 12 | VM Scale Set | ⬜ |
| 13 | Azure Key Vault | ⬜ |
| 14 | RBAC | ⬜ |
| 15 | Managed Identity | ⬜ |
| 16 | Azure Backup | ⬜ |
| 17 | Azure Monitor | ⬜ |
| 18 | Log Analytics | ⬜ |
| 19 | Azure App Service | ⬜ |
| 20 | Projet Final | ⬜ |

---

# Compétences développées

## Gestion des identités

- Azure Entra ID
- RBAC
- Managed Identity
- Service Principal

## Réseau

- Virtual Network
- Subnets
- NSG
- Azure Bastion
- Public IP
- Load Balancer
- Application Gateway
- VNet Peering

## Calcul

- Linux VM
- Windows VM
- Availability Sets
- VM Scale Sets

## Stockage

- Storage Account
- Blob Storage
- Azure Files
- Managed Disks
- Static Website

## Sécurité

- Key Vault
- NSG
- RBAC
- Azure Defender (Microsoft Defender for Cloud)

## Supervision

- Azure Monitor
- Log Analytics
- Alerts
- Activity Log

## Sauvegarde

- Recovery Services Vault
- Azure Backup
- Restore

## Infrastructure as Code

- Terraform
- Variables
- Outputs
- Modules
- Remote State
- Backend Azure Storage

---

# Déploiement

Chaque laboratoire suit le même processus.

Connexion Azure :

```bash
az login
```

Initialisation :

```bash
terraform init
```

Prévisualisation :

```bash
terraform plan
```

Déploiement :

```bash
terraform apply
```

Suppression :

```bash
terraform destroy
```

---

# Objectif final

Construire une infrastructure Azure complète comprenant :

- Virtual Network
- Subnets
- Linux VM
- Windows VM
- Bastion
- Load Balancer
- Application Gateway
- Azure Storage
- Azure Files
- Key Vault
- Azure Monitor
- Backup
- RBAC
- Managed Identity

L'ensemble sera entièrement automatisé avec Terraform.

---

# Certification visée

**Microsoft Certified: Azure Administrator Associate (AZ-104)**

Compétences couvertes :

- Gestion des identités et de la gouvernance Azure
- Gestion du stockage Azure
- Déploiement et gestion des ressources Azure
- Configuration et gestion des réseaux virtuels
- Supervision et sauvegarde des ressources Azure

---

# Auteur

Projet personnel de préparation à la certification **AZ-104** avec Microsoft Azure et Terraform.

---

# Licence

Projet à vocation pédagogique.
