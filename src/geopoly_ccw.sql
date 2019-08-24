# 元から反時計回りなので変化なし
.param set @polygon '[[0,0],[1,0],[0.5,1],[0,0]]'
select geopoly_json(geopoly_ccw(@polygon));

# 反時計回りに変換された
.param set @polygon_r '[[1,0],[0,0],[0.5,1],[1,0]]'
select geopoly_json(geopoly_ccw(@polygon_r));

