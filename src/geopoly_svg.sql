select geopoly_svg('[[0,0],[1,0],[0.5,1],[0,0]]');
select geopoly_svg('[[0,0],[1,0],[0.5,1],[0,0]]', 'class="mycls"', 'style="fill:blue"');
select geopoly_svg(geopoly_blob('[[0,0],[1,0],[0.5,1],[0,0]]'));

