# Lab 03 - Déploiement d'une machine virtuelle Linux avec Terraform

![Terraform](https://img.shields.io/badge/Terraform-1.13+-623CE4?logo=terraform)
![Azure](https://img.shields.io/badge/Microsoft-Azure-0078D4?logo=microsoftazure)
![AZ-104](https://img.shields.io/badge/Certification-AZ--104-blue)

---

# Présentation

Dans ce laboratoire, nous allons déployer notre première **Machine Virtuelle Linux** dans Microsoft Azure.

Nous utiliserons le **Virtual Network** créé lors du **Lab 02** afin de connecter la machine à notre infrastructure réseau.

Ce laboratoire permet de découvrir les composants indispensables au déploiement d'une VM Azure et constitue une étape importante dans la préparation de la certification **AZ-104**.

---

# Objectifs pédagogiques

À la fin de ce laboratoire, vous serez capable de :

- Déployer une machine virtuelle Linux.
- Créer une interface réseau (NIC).
- Associer une adresse IP publique.
- Utiliser une authentification SSH par clé publique.
- Comprendre le fonctionnement des Managed Disks.
- Déployer une VM avec Terraform.

---

# Architecture

```text
                    Internet
                        │
                 Public IP Address
                        │
                   Network Interface
                        │
                 Linux Virtual Machine
                        │
                 Managed OS Disk
                        │
                 WebSubnet (Lab02)
                        │
                  Virtual Network
```

---

# Ressources déployées

| Ressource | Description |
|-----------|-------------|
| Public IP | Adresse publique de la VM |
| Network Interface | Carte réseau Azure |
| Linux Virtual Machine | Machine Ubuntu |
| Managed Disk | Disque système géré par Azure |

---

# Structure du projet

```text
Lab03-LinuxVM/
│
├── provider.tf
├── versions.tf
├── variables.tf
├── terraform.tfvars
├── locals.tf
├── main.tf
├── outputs.tf
├── .gitignore
└── README.md
```

---

# Architecture réseau

La machine virtuelle sera déployée dans le réseau créé au laboratoire précédent.

```text
Virtual Network
│
├── WebSubnet
│      │
│      ├── Linux VM
│      ├── Network Interface
│      └── Public IP
│
├── AppSubnet
│
└── AzureBastionSubnet
```

---

# Technologies utilisées

- Microsoft Azure
- Terraform
- Azure CLI
- Ubuntu Server LTS
- OpenSSH
- Visual Studio Code

---

# Prérequis

Avant de commencer :

- Avoir terminé le Lab 02.
- Disposer d'un abonnement Azure.
- Terraform installé.
- Azure CLI installé.
- Une paire de clés SSH.

---

# Génération d'une clé SSH

Si vous ne possédez pas encore de clé SSH :

```bash
ssh-keygen -t rsa -b 4096
```

La clé publique sera utilisée lors de la création de la VM.

---

# Déploiement

## Connexion Azure

```bash
az login
```

---

## Initialisation

```bash
terraform init
```

---

## Vérification

```bash
terraform plan
```

---

## Déploiement

```bash
terraform apply
```

---

## Connexion à la VM

Récupérer l'adresse IP publique :

```bash
terraform output public_ip
```

Connexion :

```bash
ssh azureuser@<PUBLIC_IP>
```

---

## Suppression

```bash
terraform destroy
```

---

# Vérifications

Après le déploiement :

- La VM apparaît dans Azure Portal.
- Une Public IP est associée.
- Une Network Interface est créée.
- Le Managed Disk est visible.
- La connexion SSH fonctionne.

---

# Ce que vous avez appris

Au cours de ce laboratoire, vous avez appris à :

- Déployer une VM Linux.
- Comprendre les composants nécessaires à une machine virtuelle Azure.
- Utiliser une clé SSH.
- Associer une carte réseau à une VM.
- Utiliser un disque managé Azure.
- Déployer une infrastructure avec Terraform.

---

# Bonnes pratiques

- Toujours utiliser une authentification par clé SSH.
- Ne jamais exposer inutilement le port SSH à Internet.
- Utiliser des tags sur toutes les ressources.
- Utiliser des tailles de VM adaptées aux besoins.
- Séparer les environnements (Dev, Test, Production).

---

# Compétences AZ-104 couvertes

- ✅ Déploiement de Virtual Machines
- ✅ Gestion des interfaces réseau
- ✅ Gestion des Public IP
- ✅ Authentification SSH
- ✅ Managed Disks
- ✅ Infrastructure as Code avec Terraform

---

# Résultat attendu

```text
Resource Group
│
├── Virtual Network
│      │
│      ├── WebSubnet
│      │      │
│      │      ├── Linux VM
│      │      ├── Network Interface
│      │      ├── Managed Disk
│      │      └── Public IP
│      │
│      ├── AppSubnet
│      └── AzureBastionSubnet
```

---

# Concepts clés

## Public IP

Permet d'accéder à la machine virtuelle depuis Internet.

---

## Network Interface (NIC)

Relie la machine virtuelle au Virtual Network.

---

## Managed Disk

Disque entièrement administré par Azure, offrant une haute disponibilité et une gestion simplifiée.

---

## SSH

Protocole sécurisé permettant l'administration distante des machines Linux.

---

# Défis proposés

À la fin du laboratoire, essayez de :

- Déployer une seconde VM Linux.
- Modifier la taille de la VM.
- Ajouter plusieurs interfaces réseau.
- Changer l'image Ubuntu.
- Déployer une VM sans adresse IP publique.

---

# Prochain laboratoire

## Lab 04 - Déploiement d'une machine virtuelle Windows

Dans le prochain laboratoire, nous déploierons une **VM Windows Server** afin de découvrir :

- Remote Desktop (RDP)
- Mot de passe administrateur
- Windows Server
- Public IP
- Managed Disk
- Terraform

Nous comparerons également les différences entre les machines virtuelles Linux et Windows dans Azure.

---

# Auteur

Projet personnel de préparation à la certification **Microsoft Certified: Azure Administrator Associate (AZ-104)**.

Chaque laboratoire est construit pour reproduire des scénarios réels rencontrés en entreprise et renforcer les compétences évaluées lors de l'examen AZ-104.

---

# Licence

Projet réalisé à des fins pédagogiques.