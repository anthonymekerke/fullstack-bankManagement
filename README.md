# BankManagement

## Description

Projet inspiré d'une application web bancaire ou l'utilisateur peut consulter ses comptes, lire et effectué des opérations.  
Pour cela l'utilisateur doit s'identifier en fournissant un login et un mot de passe fournie.  

### Contexte

Projet personel effectué durant ma période d'intercontrat (Octobre 2022 - Janvier 2023)  
J'ai développé cette application dans le but de progresser sur des technos web front & back.  

### Énoncé

Développer un application web "from scratch" avec la stack technique suivante:
- MySQL
- Spring 
- Angular

Mettre en place un système d'authentification, sécurisé l'application un maximum possible et personnalisé la "vue" d'un utilisateurs pour qu'il est
accès à ses informations personnelles & bancaires uniquement.  
Déployer l'application sur des services Cloud tel AWS, Azure ou Google Cloud Platform.

### Fonctionnalitées

#### Fait

* Lorsqu'un utilisateurs arrive sur l'application, il doit s'authentifier avec un identifiant et mot de passe fournie
* Si de mauvais identifiants sont entrée, l'application ouvre une fenêtre pour l'indiquer à l'utilisateur
* Une fois connecté, l'utilisateur arrive sur la page principale de l'application ou il retrouve:
  * Une liste de ses comptes favoris avec le solde actuel, le nom du compte et l'iban partiellement dévoilé
  * Une liste factice d'article d'actualité liée à l'application
  * Différents onglets représentants chacun une fonctionnalitée distincte de l'application
* L'onglet 'Compte' permet de visualiser l'ensemble des comptes:
  * Les comptes courants sont bordés de rouge, tandis que les comptes épargnes sont bordés de vert
  * Lorsqu'on clique sur un compte on a accès a deux sous-onglets:
    * Caractéristique; Montre les infos liées au compte: date de création, type de compte
    * Opérations; Montre les dernières opérations liées au compte
* L'onglet 'Virement' permet d'effectuer une opérations depuis le compte sélectionnée
* L'onglet 'Budget' n'est pas encore fonctionnel
* Le bouton en haut à droite permet de se déconnecter de l'application

#### En cours

#### À faire / Souhaitées (Idées)

* Mettre en place l'onglet 'Budget' avec pour fonctionnalitées:
 * Visualiser un courbe d'évolution du solde en fonction du temps
 * Visualiser une "balance" des dépenses/revenue
 * Effectuer une recherche sur les opérations en fonction de leur libellé, date d'execution, montant...
 * Catégoriser les opérations (Alimentation, Transport...) et évaluer la dépenses pour chaque catégories.
* Mettre en place un onglet 'Utilisateur' avec pour fonctionnalitées:
  * Visualiser les infos personnelles de l'utilisateur
  * Permettre à l'utilisateur de modifier son email et son mot de passe

### Images

[image](screenshots/authentication_page.png "Authentication page")

[image](screenshots/home_page.png "Homepage")

[image](screenshots/account_list_page.png "List of accounts")

[image](screenshots/account_transaction_page.png "Transaction on the account")

[image](screenshots/account_detail_page.png "Details about the given account")

[image](screenshots/transfer_page.png "Making a transaction")

### Dépendances

<table>
  <thead>
    <tr><th colspan="2">Environnement Technique</th></tr>
  </thead>
  <tbody>
    <tr><td><b>SGBD</b></td><td>MySQL</td></tr>
    <tr><td><b>Langage</b></td><td>Java, TypeScript</td></tr>
    <tr><td><b>Technologies/Logiciels</b></td><td>Spring, Angular</td></tr>
    <tr><td><b>Normes & architectures</b></td><td>API Rest, JWT</td></tr>
	<tr><td><b>Méthodes</b></td><td></td></tr>
  </tbody>
</table>

### Installation / Compilation

### Lancement (run)

#### Help

- Les protections CSRF ne sont pas fonctionnelles, l'application front n'arrive pas a lire les cookie fournie par le backend.
- Vider le cache liée à l'application avant chaque tentatives de connexion.
- ...

### À savoir

J'ai développé l'application en suivants les cours [Angular](https://openclassrooms.com/fr/courses/7471261-debutez-avec-angular) disponible sur OpenClassroom et produit par Will Alexander, ainsi qu'un cours [Spring Security](https://www.udemy.com/course/spring-security-zero-to-master/) disponible sur Udemy est produit par [EazyBytes](https://eazybytes.com/)  
