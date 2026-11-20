# Skills Claude d'Uniliance

Les skills (consignes réutilisables) que l'équipe Uniliance partage avec son Claude.
Ce dépôt est public : il ne contient jamais de clé, de lien personnel ni d'information privée.

## Les skills

| Skill | À quoi il sert | Dossier |
|---|---|---|
| Compte rendu | Dire ce qu'on fait : ajouter ses avancées au « Travail du jour » de Cosmolab, depuis n'importe quelle conversation | `compte-rendu/` (mode d'emploi : `compte-rendu/TUTORIEL.md`) |

## L'installer

Le plus simple : télécharge [compte-rendu.zip](https://github.com/Uniliance/claude-skills/raw/main/compte-rendu.zip)
et ajoute-le dans Claude (Paramètres › Capacités › Skills). Le mode d'emploi est dans `compte-rendu/TUTORIEL.md`.

Ou dis à ton Claude : « Installe le skill compte rendu d'Uniliance depuis https://github.com/Uniliance/claude-skills (dossier compte-rendu). »

## Le mettre à jour

Quand `CHANGELOG.md` annonce une nouvelle version, retélécharge le fichier ou dis à ton Claude :
« Le skill compte rendu a été mis à jour sur GitHub, mets-le à jour. »

## Pour qui maintient ce dépôt

Après chaque modification de `compte-rendu/SKILL.md`, relancer `./construire-zip.sh` et pousser le fichier `compte-rendu.zip`
avec le reste : c'est lui que téléchargent les membres.

## Proposer une amélioration

Un compte rendu qui sort bizarrement, un thème qui manque, une meilleure idée : dis-le à Martin ou à Étienne,
ou demande à ton Claude de proposer la modification dans ce dépôt.
