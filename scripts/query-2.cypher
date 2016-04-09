// This query finds the party
// with the highest number of
// female candidates that
// were elected.


MATCH (n:Candidates)-[:MEMBER_OF]->(p:Party) 
WHERE n.elected = 'Yes' AND n.gender = 'Female'
RETURN p, count(*) AS c ORDER BY c DESC LIMIT 1;