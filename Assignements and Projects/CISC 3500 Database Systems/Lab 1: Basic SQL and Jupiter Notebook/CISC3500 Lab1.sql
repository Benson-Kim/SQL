-- create and load the database called lab1.db3
%CREATE lab1.db3

%load lab1.db3

-- Create table called MyGraph and Add values to the graph
CREATE TABLE MyGraph(source int not NULL, destination int not NULL);
-- the values are in (source,destination pairs)
INSERT into MyGraph VALUES (5,11), (7,11), (7,8),(3,8),(3,10),(11,2),
(11,9),(11,10),(8,9)

-- Retrive are sources from the graph
SELECT DISTINCT source FROM MyGraph

-- Retrieve (source,destination) pairs where source id is larger than destination id
SELECT source, destination from MyGraph WHERE source > destination

-- Add a column called weight to the table
ALTER TABLE MyGraph add COLUMN weight INT

-- Randomly assign weight to each of the rows (links)
UPDATE MyGraph set weight = abs(random() % 11)

-- Retrieve distint values of weights 
SELECT DISTINCT weight from MyGraph
