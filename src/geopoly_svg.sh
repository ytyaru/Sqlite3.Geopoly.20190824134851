SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
"SELECT '<svg width=\"480\" height=\"320\">';" \
"SELECT geopoly_svg('[[100,100],[200,100],[150,200],[100,100]]', 'style=\"fill:blue\"');" \
"SELECT '</svg>';" > geopoly_svg.0.svg
cat geopoly_svg.0.svg

sqlite3 :memory: \
"SELECT '<svg width=\"480\" height=\"320\">';" \
"SELECT geopoly_svg(geopoly_xform('[[0,0],[1,0],[0.5,1],[0,0]]', 100, 0, 0, 100, 50, 50), 'style=\"fill:blue\"');" \
"SELECT '</svg>';" > geopoly_svg.1.svg
cat geopoly_svg.1.svg

