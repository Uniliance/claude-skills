---
name: compte-rendu
description: Dit ce qu'on fait pour l'équipe Uniliance (Cosmolab › Flot › Travail du jour) depuis n'importe quelle conversation : « ajoute ça au compte rendu » (une ligne, tout de suite) ou « fais le point de ma session » (liste à valider).
version: 0.3
---

# Compte rendu de travail (Uniliance)

Devise de l'équipe : « Faire ce qu'on dit, dire ce qu'on fait ». Les engagements vivent dans le Kanban de Cosmolab
(Flot › Actions). Ce skill sert l'autre moitié : dire ce qu'on fait, dans Flot › Travail du jour, visible de toute l'équipe.

Ce skill appartient au compte de la personne : il est disponible dans toutes ses conversations. Une journée compte
souvent plusieurs sessions ; chacune ajoute ses lignes au même « Travail du jour ».

Écris en français, en tutoyant la personne.

## Les gestes

### 1. « Ajoute ça au compte rendu » : une chose faite, tout de suite

La personne vient de finir quelque chose et le dit : « ajoute ça au compte rendu », « mets ça dans mon travail du jour ».

1. Rédige **une ligne** (voir « Écrire une ligne »), avec son thème.
2. **Dépose-la aussitôt** (voir « Déposer »), sans demander de validation : un dépôt se corrige après coup.
3. Réponds en une ou deux phrases : la ligne telle qu'elle est partie, et « Dis-moi si tu veux la corriger ou la retirer ;
   tu peux aussi le faire dans Cosmolab ». Si le dépôt direct n'est pas possible, donne la ligne dans un bloc à copier.

Si la personne ne précise pas ce qu'il faut noter, prends le résultat de ce qui vient d'être fait dans la conversation.

### 2. « Fais le point de ma session » (ou « fais mon compte rendu ») : la liste à valider

1. **Rassemble** ce qui a été fait pendant la session (la conversation en cours, ce que la personne ajoute).
   Retire ce qui a déjà été déposé avec le geste 1 dans cette session.
2. **Rédige la liste** : une ligne par chose faite, rangée par thème.
3. **Montre-la pour validation**, sans rien envoyer :
   - si l'interface sait afficher une boîte interactive, présente une boîte avec les lignes : chacune modifiable et
     retirable, et un bouton « Valider » qui te renvoie le message « Dépose ces lignes » avec la liste finale ;
   - sinon, une liste numérotée et la question « Je te le dépose comme ça ? » (valider, modifier, retirer une ligne).
4. **Après validation**, dépose (voir « Déposer ») et confirme combien de lignes sont parties.

### 3. « Montre-moi mon compte rendu du jour »

Tu ne peux pas relire Cosmolab : restitue les lignes que tu as déposées ou préparées dans cette conversation, et dis que
le reste de la journée est dans Cosmolab › Flot › Travail du jour.

## Écrire une ligne

- Une phrase compréhensible par un collègue qui n'a pas suivi, au passé ou en nom d'action, 500 caractères au plus.
- Garde les **résultats** et les **recherches** (même inachevées, si elles disent quelque chose).
  Pas de traces de conception : essais, hésitations, étapes intermédiaires.
- Thème entre crochets au début de la ligne. Thèmes courants : Cosmolab, Appli, Site, Réseaux, Vidéo, Podcast, Lettre,
  Accompagnement, Ateliers, Recherche, Équipe. Réutilise un thème existant avant d'en inventer un.
  Un « [Thème] » seul sur une ligne vaut pour les lignes qui suivent.

## Déposer

Cosmolab ignore les lignes déjà présentes pour la personne ce jour-là (même thème, même texte), retire les puces et
numéros, range sous aujourd'hui (heure de Paris), accepte 80 lignes au plus par envoi et 300 par jour. Les lignes déposées
par Claude portent une petite étoile ✦ dans Cosmolab. Le dépôt se fait toujours au nom de la personne qui te parle.

### Mode A : avec la clé de dépôt de la personne

La personne crée sa clé dans Cosmolab › Flot › Travail du jour › « Déposer depuis mon Claude » et te la donne une fois,
avec une phrase qui commence par « Ma clé de dépôt Cosmolab pour le compte rendu : cl_… ». La clé commence par `cl_`.

- **Garde-la** pour les conversations suivantes, si tu as une mémoire (demande-lui « Je retiens ta clé pour les prochaines
  conversations ? » une seule fois). Si tu n'as ni la clé dans la conversation ni dans ta mémoire, demande-la, ou passe au mode B.
- La clé ne sert qu'à ajouter des lignes au Travail du jour de la personne. Ne la répète pas, ne l'écris dans aucun
  document ni aucune ligne de compte rendu.

**Pour déposer**, ouvre cette adresse avec ton outil de lecture de pages (ou `curl` si tu as un terminal qui accède à internet),
avec les lignes encodées pour une adresse web (les retours à la ligne en `%0A`) :

```
https://hoxaonguuzotaetucmku.supabase.co/functions/v1/cosmolab-depot?cle=<clé>&texte=<lignes encodées>
```

Exemple pour les deux lignes « [Cosmolab] » puis « Chiffres YouTube ajoutés » :
`…/cosmolab-depot?cle=cl_…&texte=%5BCosmolab%5D%0AChiffres%20YouTube%20ajout%C3%A9s`

Avec un terminal, tu peux aussi envoyer un POST JSON `{"cle": "cl_…", "texte": "…"}` à la même adresse.
Si l'adresse est longue (plus de 4 000 caractères), envoie les lignes en plusieurs fois.

La réponse est un petit JSON : `ok: true` et un `message` (« 3 lignes ajoutées à ton Travail du jour. », ou « Rien de nouveau »
si tout était déjà là). Redonne ce message à la personne.
Si ton outil dit que la page n'a pas pu être lue, la clé est très probablement refusée (renouvelée, désactivée ou mal copiée) :
dis-le, propose de créer une nouvelle clé dans Cosmolab, et donne en attendant les lignes en mode B.

### Mode B : texte à coller (sans clé)

Donne les lignes dans un bloc de code :

```
[Cosmolab]
Chiffres YouTube ajoutés dans l'Observatoire
[Réseaux]
Calendrier des publications Metricool en ligne
```

et dis à la personne de le coller dans Cosmolab › Flot › Travail du jour, puis « Ajouter à ma journée ».

## À ne jamais mettre

Un compte rendu se partage. Pas de confidences, de santé, de vie privée, d'émotions personnelles, de finances
personnelles, ni de clés ou mots de passe. Si la conversation en contient, écris la ligne avec seulement le travail fait.
Même avec le dépôt direct, ne dépose rien qui sorte de cette règle.

## Limite à dire franchement

Tu ne connais que ce qui passe par tes conversations avec la personne. Si la liste paraît mince, rappelle-le une fois.

## Mise à jour

Ce skill évolue (voir `CHANGELOG.md` du dépôt). Si la personne dit qu'il a été mis à jour, relis la dernière version
sur https://github.com/Uniliance/claude-skills (dossier compte-rendu) et remplace l'ancienne.
