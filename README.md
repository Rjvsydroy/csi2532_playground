# csi2532_playground
Lab6

Sydroy Rakotonomenjanahary #300041897

## 1. 

Lister les name et birthplace de tous les artists

```sql
SELECT name, birthplace FROM artists;
```

|name|birthplace|
|---|---|
|Caravaggio|Milan|
|Picasso|Malaga|
|Leonardo|Florence|
|Michelangelo|Arezzo|
|Josefa|Seville|
|Hans Hoffman|Weisenburg|
|John|San Francisco|

## 2. 

Lister le title et le price de toutes les artworks après 1600

```sql 
SELECT title, price FROM artworks
 WHERE year > 1600;
 ```
 
 |title|price|
|---|---|
|Three Musicians|11000.00|
 
 ## 3. 
 
 Lister le title et le type de toutes les artworks qui ont été peintes en 2000 ou peintes par Picasso
 
 ```sql 
 SELECT title, type FROM artworks
 WHERE year = 2000 OR artisr_name = "Picasso";
 ```
 
 |title|type|
|---|---|
|Three Musicians|Modern|

 
 ## 4.
 
 Lister les name et birthplace de tous les artists nés entre 1880 et 1930. (ASTUCE: EXTRACT(YEAR FROM dateofbirth) vous donne l'année à partir d'un attribut DATE
 
 ```sql 
 SELECT name, birthplace FROM artists
 WHERE EXTRACT (year FROM dateofBirth) > 1880 AND EXTRACT (year FROM dateofBirth) < 1930;
 ```
 
 |name|birthplace|
|---|---|
|Picasso|Malaga|
|John|San Francisco|

 ## 5. 
 
 Lister les name et le country de naissance de tous les artists dont le style de peinture est Modern, Baroque or Renaissance. (ASTUCE: utilisez le mot-clé IN).
 
 ```sql
 SELECT name, birthplace FROM artists
 WHERE style IN ('Modern', 'Baroque', 'Renaissance');
 ```
 
 |name|birthplace|
|---|---|
|Caravaggio|Milan|
|Leonardo|Florence|
|Michelangelo|Arezzo|
|Josefa|Seville|
|Hans Hoffman|Weisenburg|
|John|San Francisco|

 
 ## 6.
 
 Lister tous les détails des artworks dans la base de données, triés par title.
 
 ```sql 
 SELECT * FROM artworks
 ORDER BY title ASC;
 ```
 |title|year|type|price|artist_name|
|---|---|---|---|---|
|The Cardsharps|1594|Baroque|40000.00|Caravaggio|
|Three Musicians|1921|Modern|11000.00|Picasso|

 ## 7.
 
 Lister les name et les customer ids de tous les customers qui aiment Picasso.
 
 ```sql
 SELECT name, id FROM customers
 INNER JOIN likeartists ON customers.id = likeartists.customer_id
 WHERE artist_name = 'Picasso';
 ```
 
 |customer_id|artist_name|
|---|---|
|4|Picasso|
|5|Picasso|

## 8.

Lister les name de tous les customers qui aiment les artistes de style Renaissance et dont le price est supérieur à 30000

```sql 
SELECT name FROM customers 
INNER JOIN likeartists ON customers.id = likeartists.customer_id
WHERE artist_name IN(
 SELECT artist_name FROM likeartists
 INNER JOIN artists ON likeartists.artist_name = artists.name
 WHERE style = 'Rennaissance')
AND amount > 30000;
```
 
 |id|name|
|---|---|
|---|---|
 

