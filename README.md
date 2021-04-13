# csi2532_playground
Lab9

Sydroy Rakotonomenjanahary #300041897

## Q1a: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivantes.
```sql
R =(A,B,C,D) 
F={  
  AB -> C,   
  C -> D,   
  D -> A 
}
```
### a. Lister toutes les clés candidates de R.

Les clés candidates de R sont A et B.

### b. Est-ce que R est dans 3NF? BCNF?

R est seulement dans 3NF.

## Q1b: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivante
```sql
R =(A,B,C,D) 
F={  
  A -> B, 
  B -> C,   
  C -> D
  D -> A
}
```
### a. Lister toutes les clés candidates de R.

A est la seule clé candidate de R.

### b. Est-ce que R est dans 3NF? BCNF?

R est à la fois dans 3NF et dans BNCF.

## Q1c: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivantes.
```sql
s =(A,B,C,D) 
F={  
  B -> C,   
  C -> A,   
  C -> D 
}
```
### a. Lister toutes les clés candidates de R.

B est la seule clé candidate de R.

### b. Est-ce que R est dans 3NF? BCNF?

R est à la fois dans 3NF et dans BNCF.

## Q1d: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivantes.
```sql
R =(A,B,C,D) 
F={  
  ABC -> D,   
  D -> A 
}
```
### a. Lister toutes les clés candidates de R.

ABC sont les clés candidates de R.

### b. Est-ce que R est dans 3NF? BCNF?

R est n'est pas dans 3NF ni dans BCNF.

## Q1e: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivantes.
```sql
R =(A,B,C,D) 
F={  
  A -> C,   
  B -> D  
}
```
### a. Lister toutes les clés candidates de R.

AB sont les clés candidates de R.

### b. Est-ce que R est dans 3NF? BCNF?

R est à la fois dans 3NF et dans BNCF.



