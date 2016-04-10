// This query finds the
// party with the highest
// number of candidates elected


MATCH (n:Candidates)-[:MEMBER_OF]->(p:Party)
WHERE n.elected = 'Yes' 
RETURN p, count(*) AS c 
ORDER BY c DESC LIMIT 1