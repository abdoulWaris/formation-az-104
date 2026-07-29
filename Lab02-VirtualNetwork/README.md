# Lab 02 - Azure Virtual Network avec Terraform

## Objectif

Dans ce laboratoire, nous allons créer un réseau virtuel Azure (Virtual Network) composé de plusieurs sous-réseaux afin de préparer l'infrastructure qui sera utilisée dans les prochains labs.

Ce laboratoire constitue la base de nombreux services Azure tels que les machines virtuelles, Azure Bastion, les Load Balancers, les Application Gateways ou encore les VM Scale Sets.

---

# Architecture

```

Internet

│
Azure Virtual Network
│
├── WebSubnet
├── AppSubnet
└── BastionSubnet

```

---

# Services Azure utilisés

- Resource Group
- Virtual Network (VNet)
- Subnets

---

# Compétences AZ-104 couvertes

- Créer un Virtual Network
- Configurer des sous-réseaux
- Comprendre l'adressage IP
- Préparer une architecture réseau Azure
- Déployer une infrastructure avec Terraform

---

# Prérequis

- Un abonnement Microsoft Azure
- Terraform >= 1.13
- Azure CLI
- Visual Studio Code

---

# Structure du projet

```

Lab02-VirtualNetwork/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
└── README.md

```

---

# Ressources créées

| Ressource | Description |
|-----------|-------------|
| Resource Group | Contient toutes les ressources du laboratoire |
| Virtual Network | Réseau privé Azure |
| WebSubnet | Hébergera les serveurs Web |
| AppSubnet | Hébergera les applications |
| AzureBastionSubnet | Réservé au service Azure Bastion |

---

# Plan d'adressage

| Sous-réseau | Plage d'adresses |
|-------------|------------------|
| VNet | 10.0.0.0/16 |
| WebSubnet | 10.0.1.0/24 |
| AppSubnet | 10.0.2.0/24 |
| AzureBastionSubnet | 10.0.3.0/26 |

> **Pourquoi `/26` pour AzureBastionSubnet ?**
>
> Azure exige un sous-réseau nommé **AzureBastionSubnet** d'une taille minimale de **/26** pour le déploiement du service Azure Bastion.

---

# Déploiement

## Connexion à Azure

```bash
az login
```

## Initialisation du projet

```bash
terraform init
```

## Vérification du plan

```bash
terraform plan
```

## Déploiement

```bash
terraform apply
```
## Affichage console

```bash
terraform output
```

## Suppression

```bash
terraform destroy
```

---

# Vérifications

Après le déploiement, vérifiez que :

- Le Resource Group est créé.
- Le Virtual Network est présent.
- Les trois sous-réseaux sont visibles.
- Les plages d'adresses correspondent à la configuration Terraform.

Vous pouvez effectuer ces vérifications depuis :

- Azure Portal
- Azure CLI
- Terraform State

---

# Ce que vous avez appris

À la fin de ce laboratoire, vous serez capable de :

- Comprendre le rôle d'un Virtual Network.
- Concevoir un plan d'adressage IP.
- Créer plusieurs sous-réseaux.
- Préparer une infrastructure réseau évolutive.
- Déployer des ressources Azure avec Terraform.

---

# À retenir pour l'AZ-104

✔ Comprendre la différence entre un Virtual Network et un Subnet.

✔ Savoir choisir une plage d'adresses privée.

✔ Connaître le rôle du sous-réseau **AzureBastionSubnet**.

✔ Préparer le réseau avant le déploiement des machines virtuelles.

---

# Prochain laboratoire

➡ **Lab 03 - Linux Virtual Machine**

Dans le prochain laboratoire, nous déploierons une machine virtuelle Linux dans le **WebSubnet** créé ici, avec :

- Public IP
- Interface réseau (NIC)
- SSH
- Managed Disk
- Terraform

---

# Références

- Microsoft Azure Virtual Network
- Terraform AzureRM Provider
- Documentation officielle AZ-104

---

# Auteur

Projet personnel de préparation à la certification **Microsoft Certified: Azure Administrator Associate (AZ-104)**.
