.param set @polygon '[[0,0],[1,0],[0.5,1],[0,0]]'
SELECT '<svg width="300" height="300">';
WITH t1(svg, color) AS (VALUES
  ((select @polygon), 'red'),
  ((select geopoly_bbox(@polygon)), 'green')
)
SELECT
  geopoly_svg(geopoly_xform(svg, 100, 0, 0, 100, 200, 200), printf('style="fill:%s;stroke:%s;stroke-width:2"',color), printf('fill-opacity="0.5"'))
  FROM t1;
SELECT '</svg>';
