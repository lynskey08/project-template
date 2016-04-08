# Irish Constituencies Neo4j Database
###### Gareth Lynskey, G00312651

## Introduction
For my project I have to design a neo4j graph database for the constituencies in the Republic of Ireland, the candidates that ran in those constituencies and create a relationship between them.

## Database
First I began by creating the 40 constituencies in Ireland.The line below is an example of how I created a single node(constituency) with labels and properties in order to make it unique.
```
create (`nCarlow–Kilkenny`:Constituency {name: "Carlow–Kilkenny", population:145659, seats:5, boundary_areas_description: "The county of Kilkenny and the county of Carlow, except the part thereof which is comprised in the constituency of Wicklow." })
```
Then I started creating all of the candidates who ran in those constituencies.
```
Create (`nCatherine Byrne`:Candidates {id:85, name:"Catherine Byrne", party:"Fine Gael", gender:"Female", constituency:"Dublin South-Central", age:59, elected:"Yes"})
```

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
