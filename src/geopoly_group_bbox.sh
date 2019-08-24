SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: < geopoly_group_bbox.sql > geopoly_group_bbox.svg
cat geopoly_group_bbox.svg

