// These are the queries that create the relationship for the parties is Ireland.

match (n{party:"Fine Gael"}), (d{name:"Fine Gael"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Independent"}), (d{name:"Independent"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Fianna Fail"}), (d{name:"Fianna Fail"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Sinn Fein"}), (d{name:"Sinn Fein"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Labour"}), (d{name:"Labour"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"AAA-PBP"}), (d{name:"AAA-PBP"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Independents 4 Change"}), (d{name:"Independents 4 Change"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Social Democrats"}), (d{name:"Social Democrats"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Green Party"}), (d{name:"Green Party"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Renua Ireland"}), (d{name:"Renua Ireland"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Direct Democracy Ireland"}), (d{name:"Direct Democracy Ireland"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Workers Party"}), (d{name:"Workers Party"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Catholic Democrats"}), (d{name:"Catholic Democrats"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Fis Nua"}), (d{name:"Fis Nua"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Communist Party of Ireland"}), (d{name:"Communist Party of Ireland"}) create (n)-[r:MEMBER_OF]->(d) return n,d
match (n{party:"Irish Democratic Party"}), (d{name:"Irish Democratic Party"}) create (n)-[r:MEMBER_OF]->(d) return n,d