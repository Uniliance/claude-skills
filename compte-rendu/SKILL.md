---
name: compte-rendu
description: Dit ce qu'on fait pour l'équipe Uniliance (Cosmolab › Flot › Travail du jour) depuis n'importe quelle conversation : « ajoute ça au compte rendu » (une ligne, tout de suite) ou « fais le point de ma session » (liste à valider).
version: 0.2
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
2. **Dépose-la aussitôt** (voir « Déposer »), sans demander de validation : le dépôt direct se corrige après coup.
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

Si tu peux lire Cosmolab (mode A ci-dessous), restitue les lignes du jour par thème. Sinon, restitue ce que tu sais de
cette session, et dis que tu ne vois pas les autres.

## Écrire une ligne

- Une phrase compréhensible par un collègue qui n'a pas suivi, au passé ou en nom d'action, 500 caractères au plus.
- Garde les **résultats** et les **recherches** (même inachevées, si elles disent quelque chose).
  Pas de traces de conception : essais, hésitations, étapes intermédiaires.
- Thème entre crochets au début de la ligne. Thèmes courants : Cosmolab, Appli, Site, Réseaux, Vidéo, Podcast, Lettre,
  Accompagnement, Ateliers, Recherche, Équipe. Réutilise un thème existant avant d'en inventer un.
  Un « [Thème] » seul sur une ligne vaut pour les lignes qui suivent.

## Déposer

Cosmolab ignore les lignes déjà présentes pour la personne ce jour-là (même thème, même texte), retire les puces et
numéros, et accepte 80 lignes au plus par envoi. Les lignes déposées par Claude portent une petite étoile ✦.
Le dépôt se fait toujours **au nom de la personne qui te parle**, jamais d'une autre.

Choisis le premier mode disponible :

**A. Dépôt direct, si le connecteur Supabase du projet de Cosmolab est disponible dans la conversation.**
Le projet est `hoxaonguuzotaetucmku`. Appelle `execute_sql` avec la fonction de dépôt, en entourant le texte de `$cr$`
pour que les apostrophes ne gênent pas :

```sql
select public.cosmolab_travail_deposer(
  '<identifiant de membre de la personne>'::uuid,
  (now() at time zone 'Europe/Paris')::date,
  $cr$[Cosmolab]
Chiffres YouTube ajoutés dans l'Observatoire
[Réseaux]
Calendrier des publications Metricool en ligne$cr$);
```

La fonction renvoie le nombre de lignes ajoutées (moins que prévu si certaines étaient déjà là). L'identifiant de membre :
si tu ne le connais pas, retrouve-le une seule fois avec l'adresse email de la personne
(`select id from auth.users where email = '…'`, puis vérifie qu'elle figure dans `cosmolab.membres`) et ne retiens que le sien.
N'utilise ce mode que pour déposer le compte rendu : ne lis ni ne modifie rien d'autre dans la base.

**B. Sinon, texte à coller.** Donne les lignes dans un bloc de code :

```
[Cosmolab]
Chiffres YouTube ajoutés dans l'Observatoire
[Réseaux]
Calendrier des publications Metricool en ligne
```

et dis à la personne de le coller dans Cosmolab › Flot › Travail du jour, puis « Ajouter à ma journée ».

**C. Lien de dépôt personnel (à venir).** Quand il existera, il sera décrit ici ; la personne le donnera elle-même.
N'invente jamais de lien et n'en écris jamais dans le dépôt public.

## À ne jamais mettre

Un compte rendu se partage. Pas de confidences, de santé, de vie privée, d'émotions personnelles, de finances
personnelles, ni de clés ou mots de passe. Si la conversation en contient, écris la ligne avec seulement le travail fait.
Même avec le dépôt direct, ne dépose rien qui sorte de cette règle.

## Limite à dire franchement

Tu ne connais que ce qui passe par tes conversations avec la personne. Si la liste paraît mince, rappelle-le une fois.

## Mise à jour

Ce skill évolue (voir `CHANGELOG.md` du dépôt). Si la personne dit qu'il a été mis à jour, relis la dernière version
sur https://github.com/Uniliance/claude-skills (dossier compte-rendu) et remplace l'ancienne.
