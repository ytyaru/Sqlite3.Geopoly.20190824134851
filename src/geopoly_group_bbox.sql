SELECT '<svg width="600" height="300">';
select geopoly_svg(geopoly_group_bbox(_shape)) 
from (
  select '[[0,0],[1,0],[0.5,1],[0,0]]' as _shape 
  union 
  select '[[10,10],[11,10],[11,11],[10,11],[10,10]]'
);
SELECT '</svg>';

