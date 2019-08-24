SELECT '<svg width="600" height="300">';
WITH t1(x,y,n,color) AS (VALUES
   (100,100,3,'red'),
   (200,100,4,'orange'),
   (300,100,5,'green'),
   (400,100,6,'blue'),
   (500,100,7,'purple'),
   (100,200,8,'red'),
   (200,200,10,'orange'),
   (300,200,12,'green'),
   (400,200,16,'blue'),
   (500,200,20,'purple')
)
SELECT
   geopoly_svg(geopoly_regular(x,y,40,n),
        printf('style="fill:none;stroke:%s;stroke-width:2"',color))
   || printf(' <text x="%d" y="%d" alignment-baseline="central" text-anchor="middle">%d</text>',x,y+6,n)
  FROM t1;
SELECT '</svg>';

