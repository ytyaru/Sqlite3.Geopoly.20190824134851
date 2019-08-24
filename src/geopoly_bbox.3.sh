SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: < geopoly_bbox.3.sql > geopoly_bbox.3.svg
cat geopoly_bbox.3.svg

