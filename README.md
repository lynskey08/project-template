# Irish Constituencies Neo4j Database
###### Gareth Lynskey, G00312651

## Introduction
For my project I have to design a neo4j graph database for the constituencies in the Republic of Ireland, the candidates that ran in those constituencies and create a relationship between them.

## Database
First I began by creating the 40 constituencies in Ireland.The line below is an example of how I created a single node(constituency) with labels and properties in order to make it unique.
```
create (`nCarlow–Kilkenny`:Constituency {name: "Carlow–Kilkenny", population:145659, seats:5, boundary_areas_description: 
"The county of Kilkenny and the county of Carlow, except the part thereof which is comprised in the constituency of Wicklow." })
```
I started creating all of the candidates who ran in those constituencies.
```
Create (`nCatherine Byrne`:Candidates {id:85, name:"Catherine Byrne", party:"Fine Gael", gender:"Female",
constituency:"Dublin South-Central", age:59, elected:"Yes"})
```
Once the candidates and constituencies were made I began to make relationships between a node from each of them.
In the example below I took the constituency property from where a candidate is located and the name of a constituency and made the relationship between them.The relationship will work for all other candidates in that constituency as long as their constituency name is the same.
```
match (n{constituency:"Carlow-Kilkenny"}), (a{name:"Carlow–Kilkenny"}) create (n)-[r:RAN_IN]->(a) return n,a
```
Then I decided to create all of the political parties in Ireland and makd a relationship between them and the candidates.
```
Create (`nFine Gael`: Party{name:"Fine Gael", leader:"Enda Kenny", colours:"Blue", candidates: 87, elected: 49})

match (n{party:"Fine Gael"}), (d{name:"Fine Gael"}) create (n)-[r:MEMBER_OF]->(d) return n,d
```

## Queries
1.Find the political party that has the highest number of candidates elected.
2.Find the political party that has the highest number of elected female candidates.
3.Find the party with the lowest number of candidates

#### Query One
This query retreives the party with the highest number of candidates elected.
```cypher
MATCH (n:Candidates)-[:MEMBER_OF]->(p:Party)
WHERE n.elected = 'Yes' 
RETURN p, count(*) AS c 
ORDER BY c DESC LIMIT 1
```

#### Query Two
This query retreives the candidates that are a member of a party 
that have been elected and are female and must return that party with the highest 
number of female candiates that have been elected.
```cypher
MATCH (n:Candidates)-[:MEMBER_OF]->(p:Party) 
WHERE n.elected = 'Yes' 
AND n.gender = 'Female'
RETURN p, count(*) AS c 
ORDER BY c DESC LIMIT 1
```

#### Query Three
This query retreives the party with the lowest number of candidates.
```cypher
MATCH (p:Party)
RETURN p, size((p)<-[:MEMBER_OF]-()) as c
ORDER BY c ASC LIMIT 1
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.

2.[Wikipedia website - Irish Constituencies](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), Parliamentary constituencies in the Republic of Ireland.

3.[TheJournal website - Candidates](http://www.thejournal.ie/election-2016/constituency/), the website with information on all the candidates running.

4.[Wikipedia website - Irish Parties](https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland), the website with information on all Irish Parties in government.

5.[Wikipedia website - Irish Parties](https://en.wikipedia.org/wiki/Irish_general_election,_2016), more information the Irish Parties in government.

6.[Youtube website](https://www.youtube.com/watch?v=LTdOgvpsR3c), tutorial for importing cypher queries.

7.I discussed idea's on queries with the following students: Chris Weir, Keith Langan and Patrick Griffin.
