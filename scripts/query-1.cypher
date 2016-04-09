// This query finds the
// party with the highest
// number of female candidates


MATCH (n:Candidates)-[:MEMBER_OF]->(p:Party) 
WHERE n.gender = 'Female' 
RETURN p, count(*) AS c ORDER BY c DESC LIMIT 1;