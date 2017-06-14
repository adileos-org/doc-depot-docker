REX
===


Alimenter en donnée s d'auth


L'encoding doit être ISO et non pas UTF.


L'applicationc rée plein de ficchiers temporaires pas très beaux dans la racine du projet.


PHPDoc générée :  aucun commentaire sur la signification des méthodes

## Cryptage

> Vérfifer si le système de cryptage n'est pas ssystem-dépendant de la function  qui génère la clé.

Pas pratique on doit génrer un mdp avec les function pour pouvoir utiliser PhpMyAdmin

INSERT INTO `r_user` (`idx`, `id`, `pw`, `droit`, `mail`, `organisme`, `nom`, `prenom`, `anniv`, `telephone`, `nationalite`, `ville_nat`, `adresse`, `recept_mail`, `prenom_p`, `prenom_m`, `creation`, `lecture`, `last_cx`, `last_hash_ctrl`, `tel_valide`, `cg_valide`, `type_user`, `langue`, `fuseau`) VALUES ('1', 'admin', 'nkC2o2OFc9g6MmdKnQjEbUDs81PhUV+NW/4H9KCzf+s=\r\n', 'A', 'fredgont@gmail.com', '', 'Gontier', 'Frederic', '13/01/1975', '0663586196', 'Française', 'Avranches', 'aaaa', 'aaaaa', 'aaaa', 'aaaa', 'aaaa', 'aaa', 'aaa', 'aaaa', 1, 'aaa', 'aaa', 'aaa', 'aaa')