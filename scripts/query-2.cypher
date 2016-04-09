// This query finds the party
// with the highest number of
// elected females.


MATCH (n:Candidates)-[:MEMBER_OF]->(p:Party) 
WHERE n.elected = 'Yes' AND n.gender = 'Female'
RETURN p, count(*) AS c ORDER BY c DESC LIMIT 1;