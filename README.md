
# api_rest_mvvm

## Pourquoi utiliser un factory constructor ?

Un factory constructor permet de créer une instance d’une classe à partir d’autres sources, comme un objet JSON. C’est particulièrement utile pour la désérialisation : on peut définir toute la logique de conversion d’une structure de données externe (JSON) en un objet de notre classe, tout en gardant un code clair et centralisé dans un seul constructeur.

## Pourquoi utiliser notifyListeners() ?
notifyListeners() est fourni par ChangeNotifier. Il permet d’informer (notifier) toutes les vues ou widgets qui écoutent ce modèle (via Provider) que l’état a changé. Ainsi, l’interface utilisateur est reconstruite avec les nouvelles données sans avoir à écrire manuellement du code de mise à jour.

## Que se passe-t-il si on oublie notifyListeners() ?
Les widgets qui consomment ce ViewModel ne seront pas prévenus que l’état a changé. Par conséquent, l’interface utilisateur restera figée sur l’ancien état. Même si vous modifiez des variables au sein du ViewModel, l’affichage ne sera pas rafraîchi tant que notifyListeners() n’aura pas été appelé.

## Quelle est la responsabilité du ViewModel dans MVVM ?
Dans l’architecture MVVM :

Le ViewModel gère la logique métier et la logique de présentation.

Il récupère les données (par exemple via un service ou une API) et stocke ces données.

Il expose ensuite ces données et leur état (loading, liste, erreurs, etc.) à la Vue (UI).

Il notifie également la Vue dès qu’il y a un changement d’état, de sorte que la Vue puisse se reconstruire automatiquement.

En résumé, le ViewModel fait le lien entre l’interface utilisateur (la Vue) et les sources de données (le Model, ou le service d’API) pour maintenir une séparation claire des responsabilités.