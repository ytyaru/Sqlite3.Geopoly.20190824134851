SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
"CREATE VIRTUAL TABLE mygeo0 USING geopoly();" \
"INSERT INTO mygeo0 VALUES('[[0,0],[1,0],[0.5,1],[0,0]]');" \
".headers on" \
"SELECT * FROM mygeo0;"

sqlite3 :memory: \
"CREATE VIRTUAL TABLE newtab USING geopoly(a,b,c);" \
"INSERT INTO mygeo0(_shape) VALUES('[[0,0],[1,0],[0.5,1],[0,0]]');" \
".headers on" \
"SELECT * FROM mygeo0;"

