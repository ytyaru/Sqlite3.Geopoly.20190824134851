SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: < geopoly_regular.0.sql > geopoly_regular.0.svg

