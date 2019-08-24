SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

echo "CREATE VIRTUAL TABLE mygeo1 USING geopoly(name);
INSERT INTO mygeo1(name,_shape) VALUES('二等辺三角形','[[0,0],[1,0],[0.5,1],[0,0]]');
INSERT INTO mygeo1(name,_shape) VALUES('正方形','[[10,10],[11,10],[11,11],[10,11],[10,10]]');" > create_0.sql

sqlite3 :memory: \
".read create_0.sql" \
".headers on" \
"SELECT * FROM mygeo1 WHERE geopoly_overlap(_shape, '[[0,0],[0.5,0],[0.25,0.5],[0,0]]');" \
"SELECT * FROM mygeo1 WHERE geopoly_overlap(_shape, '[[10,10],[10.5,10],[10.25,10.5],[10,10]]');" \
"SELECT * FROM mygeo1 WHERE geopoly_overlap(_shape, '[[100,100],[100.5,100],[100.25,100.5],[100,100]]');"

