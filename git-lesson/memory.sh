# ---------------------------------------------------------- #
#                           GIT                              #
# ---------------------------------------------------------- #

# ----------------------------- #
#           CONFIGURATION       #
# ----------------------------- #

# Affiche la version de Git installée sur le système (plusieurs possibilités).
git version | git -v

# Configure le nom de l'utilisateur et son email (Obligatoire).
git config --global user.email "johndoe@gmail.com"
git config --global user.name "John Doe"

# Configure Git pour qu'il colore la sortie de la console.
git config --global color.ui true

# Ouvrir le fichier de configuration global de Git.
git config --global --edit

# Configure l'editeur de texte par defaut utilisé par Git
git config --global core.edit "code --wait"


# ----------------------------- #
#   INITIALISATION DE PROJET    #
# ----------------------------- #

# Crée un nouveau dépôt Git
git init

# Affiche l'état de suivi des fichiers
git status


# ----------------------------- #
#           COMMIT              #
# ----------------------------- #

# Ajoute un ou des fichier(s) modifiés à la staging area pour préparer un commit.
git add nom_fichier | git add .

# Enregistre les modifications présentes dans la staging area en créant un nouveau commit avec le message spécifié.
git commit -m 'first commit'

# Modifie le dernier commit.
git commit --amend -m "modification du h1 et du h2"

# Affiche l'historique des commits.
git log
git log --oneline

# Permet de se déplaver vers un commit spécifique en utilisant son identifiant.
git checkout id_commit

#Permet de revenir au dernier commit.
git checkout nom_branchee


# ----------------------------- #
#           BRANCHES            #
# ----------------------------- #

# Affiche la liste des branches.
git branch

# Créé une nouvelle branche.
git branch nom_branche

# Change de branche.
git switch nom_branche

# Fusionne les modifications de la branch spécifié sur la branche actuelle.
git merge nom_branche

# Renomme la branch actuelle avec le nouveau nom.
git branch -m nouveau_nom

# Supprime la branch spécifié.
git branch -d nom_branche


# ----------------------------- #
#           RESTORE             #
# ----------------------------- #

# Restaure le fichier à l'état du dernier commit.
git restore nom_fichier

# Supprime le fichier spécifié de la staging area, le retirant de la préparation pour le commit.
git restore --staged nom_fichier

#Créé un nouveau commit à partir du commit spécifié
git revert id_commit


# ----------------------------- #
#           REMOTE              #
# ----------------------------- #

# Etablir une connexion avec un dépôt distant en lui attribuant un nom et une URL.
git remote add alias url

# En liant la branche locale avec la branche distante
# Envoie le contenu du dépôt local vers le dépôt distant
git push -u alias nom_branche

# Envoie le contenu du dépôt local vers le dépôt distant.
git push

# Récupère tout l'historique du dépôt distant et incorpore les modification.
git pull