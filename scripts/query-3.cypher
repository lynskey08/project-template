// This query finds the party 
// with the lowest amount
// of candidates.


MATCH (p:Party)
RETURN p, size((p)<-[:MEMBER_OF]-()) as c
ORDER BY c ASC
LIMIT 1