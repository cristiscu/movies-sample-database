This project contains CSV data files and SQL script files to create similar Movies databases:
* as a relational database in **Snowflake**, to be queried with *SQL*;
* as a graph database in **Amazon Neptune**, to be queried with *Gremlin*.
* as a graph database in **Neo4j**, to be queried with *Cypher*;

The combined CSV file for Neo4j was actually exported as such from their Movies sample database, and was used to generate the other files.

## Cypher Queries

Here are several Cypher queries you may try on the Neo4j graph database:

```
-- Find 5 movies released after year 2000
MATCH (m:Movie) WHERE m.released > 2000 RETURN m LIMIT 5
```

![5 Movies after 2000](/images/movies.png)

```
-- Find all actors who played in all the movies released after year 2000
MATCH (p:Person)-[d:ACTED_IN]-(m:Movie) WHERE m.released > 2010 RETURN p,d,m
```

![Actors in Movies after 2000](/images/actors.png)

```
-- Find all people related to the movie "Cloud Atlas" in any way
MATCH (p:Person)-[relatedTo]-(m:Movie {title: "Cloud Atlas"}) RETURN p.name, type(relatedTo)
```

![10 People Related to Movies after 2000](/images/all.png)
