Ceci est une copie du git Vue2 qui n'est aujourd'hui plus maintenu suite à la sortie de Vue3.


Partie git :

Dans un premier tant, il faut cloner le dossier dans un dossier local avec git clone.

```
git clone https://github.com/vuejs/vue
```

Ensuite, il faut créer un dossier sur GitHub qui servira de dépôt pour notre nouveau git.

Une fois le dossier créé, on utilise la commande git remote rm origin pour supprimer le lien git avec le git officiel de Vue3.
On ajoute ensuite notre nouveau dossier avec git remote add origin <nom du dossier>

```
git remote add https://github.com/sgonzalez58/vue-test
```

On peut alors ajouter un fichier .gitignore pour ne pas ajouter les fichiers qui ne nous intéressent pas et on réalise le premier commit et on push.

```
git add --all
git commit -m "commit initial"
git push origin main
```


Partie Docker :

Création du fichier Dockerfile

Voici le contenu : 

```
FROM ubuntu:latest

COPY ./ ./

RUN apt-get update
RUN apt-get -y install npm
RUN ls
RUN npm install


EXPOSE 80 443

CMD [ "npm", "start" ]
```

Il faut ensuite créer l'image

```
docker build -t vue-test .
```

et il ne reste plus qu'à le lancer.

```
docker run -d -p 8000:80 vue-test
```