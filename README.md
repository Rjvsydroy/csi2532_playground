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


## Q2a: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes:
```sql
R={A,B,C,D,E,F}
F={
  AB -> C,
  BC -> AD,
  D -> E,
  CF -> E
}
```
### Est-ce que AB -> D est valide? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

(AB)+ = AB = ABC = ABCD = ABCDE = ABCDEF, donc AB -> D est valide.

## Q2b: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes:
```sql
R={A,B,C}
F={
  AB -> C
}
```
### Est-ce que A -> C est valide? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

A -> C n'est pas valide car on a (A)+ = A.

## Q2c: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes:
```sql
R={A,B,C}
F={
  AB -> C
}
```
### Est-ce que B -> C est valide? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

Comme dans la question précédente, B -> C n'est pas valide car (B)+ = B.

## Q2d: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes:
```sql
R={A,B,C}
F={
  AB -> C
}
```
### Est-ce que A -> C OR B -> C est valide? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

Depuis Q2b et Q2c, A -> C et B -> C ne sont pas valide.

## Q3: Couverture canonique

Calculer une couverture canonique pour 
```sql
F={
  B -> A,
  D -> A,
  AB -> D
}
```
En combinant la relation suivante: B - > A et D -> A, on aura: BD -> A. Donc:
une couverture canonique pour F serait {BD -> A, AB -> D}.

## Q4: Décomposition BCNF

Produire une décomposition BCNF de R.
```sql
R = ABCDEFGH
F = {
  ABH -> C,
  A -> DE,
  BGH -> F,
  F -> ADH,
  BH -> GE
}

On a les fermetures suivantes:
(A)+ = DEA, (B)+ = B, (C)+ = C, (D)+ = D, (E)+ = E, (F)+ = ADHF, (G)+ = G, (H)+ = H,
(ABH)+ = DEABHC, (BGH)+ = FBGH, (BH)+ = GEBH.

Les clés candidates seront: ABH et BGH car: pour A -> DE, A est contenu dans ABH et pour
BH -> GE BH est contenu dans ABH et BGH.
