1/Create   "world_boundaries" folder inside tilemillstyle24

2/ Cd to "world_boundaries" folder

3/ Downloading the Coastlines Shapefiles and extract files
-------------------------------------
 
    All these actions are regrouped in the script file get-coastlines.sh in this directory

    wget http://tile.openstreetmap.org/world_boundaries-spherical.tgz # (51M)
    wget http://tile.openstreetmap.org/processed_p.tar.bz2 # (391M)
    wget http://tile.openstreetmap.org/shoreline_300.tar.bz2 # (42M)
    wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip # (1.5 MB)
    wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip # (44 KB)

    tar xzf world_boundaries-spherical.tgz # creates a 'world_boundaries' folder
    tar xjf processed_p.tar.bz2  
    tar xjf shoreline_300.tar.bz2  
    unzip -q ne_10m_populated_places.zip  
    unzip -q ne_110m_admin_0_boundary_lines_land.zip  
