# 平行移動
.param set @polygon '[[0,0],[1,0],[0.5,1],[0,0]]'
.param set @DX 5
.param set @DY 7
select geopoly_json(geopoly_xform(@polygon, 1, 0, 0, 1, @DX, @DY));
# 拡大
.param set @polygon '[[0,0],[1,0],[0.5,1],[0,0]]'
select geopoly_json(geopoly_xform(@polygon, 10, 0, 0, 100, 0, 0));
# 縮小
.param set @polygon '[[0,0],[100,0],[50,100],[0,0]]'
select geopoly_json(geopoly_xform(@polygon, 0.5, 0, 0, 0.1, 0, 0));
# 回転
.load /home/pi/root/sys/env/tool/sqlite_ext/libExtensionFunctions.so
.param set @polygon '[[0,0],[1,0],[0.5,1],[0,0]]'
.param set @DX 5
.param set @DY 7
.param set @R (PI()/2)
select geopoly_json(geopoly_xform(@polygon, cos(@R), sin(@R), -sin(@R), cos(@R), 0.5, 0.5));

