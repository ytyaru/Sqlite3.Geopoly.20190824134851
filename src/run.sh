SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

./run_create_insert.sh
./run_geopoly_overlap.sh
./run_geopoly_within.sh
./geopoly_svg.sh
./geopoly_bbox.3.sh
./geopoly_group_bbox.sh
./geopoly_regular.0.sh

sqls="geopoly_ccw.sql geopoly_regular.sql geopoly_xform.sql geopoly_contains_point.sql geopoly_bbox.sql geopoly_json.sql geopoly_blob.sql geopoly_area.sql"
for path in ${sqls}; do
	echo $path
	sqlite3 < $path
done

# 個別shファイルで実行する
#geopoly_svg.sql
#geopoly_bbox.3.sql
#geopoly_group_bbox.sql
#geopoly_regular.0.sh

