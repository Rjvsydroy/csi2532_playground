# Lab4

## Systèmes universitaire

Une base de données universitaire contient des informations sur les professeurs(identifié par le numéro de sécurité sociale ou SSN) et les cours (identifié par courseid). Les professeurs donnent des cours; chacun de les situations suivantes concernent l'ensemble de relation teaches.

### 1)

Les professeurs peuvent enseigner le même cours sur plusieurs semestres et seule la plus récente doit être enregistrée.

![D1](https://github.com/Rjvsydroy/csi2532_playground/blob/lab4/diagramme1.png)

### Schéma SQL
```sql
CREATE TABLE professors (
  ssn varchar(30),
  PRIMARY KEY (ssn)
);

CREATE TABLE teaches (
  ssn varchar(30),
  courseid varchar(30),
  semesterid varchar(30),
  PRIMARY KEY (ssn, courseid)
);

CREATE TABLE courses (
  courseid varchar(30),
  PRIMARY KEY (courseid)
);
```


### 3)
Chaque professeur enseigne exactement un cours (ni plus, ni moins).

![D3](https://github.com/Rjvsydroy/csi2532_playground/blob/lab4/diagramme3.png)


### 5)
Les professeurs peuvent enseigner le même cours sur plusieurs semestres et
chaque doit être enregistrée

![D5](https://github.com/Rjvsydroy/csi2532_playground/blob/lab4/diagramme5.png)

## 6)
Supposons maintenant que certains cours
puissent être enseignés conjointement par
une équipe de professeurs, mais il est
possible qu'aucun professeur dans une
équipe ne puisse enseigner le cours.
Modélisez cette situation en introduisant des
ensembles d'entités et des ensembles de
relations supplémentaires si nécessaire.

![ERD2](https://github.com/Rjvsydroy/csi2532_playground/blob/lab4/diagramme6.png)





