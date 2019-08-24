CREATE VIRTUAL TABLE mygeo1 USING geopoly(name);
INSERT INTO mygeo1(name,_shape) VALUES('二等辺三角形','[[0,0],[1,0],[0.5,1],[0,0]]');
INSERT INTO mygeo1(name,_shape) VALUES('正方形','[[10,10],[11,10],[11,11],[10,11],[10,10]]');
