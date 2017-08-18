#terrain_sh{
  [zoom<9]{
    raster-scaling:bilinear;
    raster-comp-op:multiply;
  }
}
#terrain_color{
  [zoom<9]{
    raster-scaling:bilinear;
    raster-comp-op:multiply;
  }
}
#terrain_slope{
  [zoom<9]{
    raster-scaling:bilinear;
    raster-comp-op:multiply;
  }
}

#ocean {
  [zoom<9]{
  line-color:@water;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@water;
  }
}

Map {
  background-color: @water
}
#world{
  [zoom < 10]{
    polygon-fill: @defaultland;
  }
}
#coast-poly{
  [zoom >= 10][zoom<=@max-zoom]{
    polygon-fill: @defaultland;
  }
}

//water
#water_areas{
  [natural='glacier']{
    [zoom>=6][zoom<8]{
      line-color: rgb(153,204,255);
      line-width: 1.5;
      line-dasharray: 4, 2;
      polygon-pattern-file: url("symbols/glacier.png");
    }
    [zoom>=8][zoom<= @max-zoom]{
      line-color: rgb(153,204,255);
      line-width: 1.5;
      line-dasharray: 4, 2;
      polygon-pattern-file: url("symbols/glacier2.png");
    }
  }
  [waterway='dock'],[waterway='mill_pond'],[waterway='canal']{
    [zoom>=9][zoom<= @max-zoom]{
      polygon-gamma: 0.75;
      polygon-fill: @water;
    }
  }
  
  [landuse='basin'][zoom>=7][zoom<= @max-zoom]{
    polygon-gamma: 0.75;
    polygon-fill: @water;
  }
  
  [natural='lake'],[natural='water'],[landuse='reservoir'],[waterway='riverbank'],[landuse='water'],[natural='bay']{
    [zoom>=6][zoom<= @max-zoom]{
      polygon-gamma: 0.75;
      polygon-fill: @water;
    }
  }
  [natural='mud'][zoom>=13][zoom<= @max-zoom]{
    polygon-pattern-file: url("symbols/mud.png");
  }
  [natural='land'][zoom>=10][zoom<= @max-zoom]{
    polygon-fill: @water;
  }
}
#water-areas-overlay{
  [natural='marsh'],[natural='wetland']{
    [zoom>=13][zoom<= @max-zoom]{
      polygon-pattern-file: url("symbols/marsh.png");
    }
  }
}
#water-lines-low-zoom{
  [waterway='river']{
    [zoom=8]{
      line-color: @water;
      line-width: 0.7;
    }
    [zoom=9]{
      line-color: @water;
      line-width: 1.2;
    }
    [zoom>=10][zoom<12]{
      line-color: @water;
      line-width: 1.6;
    }
  }
}
#water_lines{
  [waterway='weir'][zoom>=15][zoom<= @max-zoom]{
    line-color: rgb(170,170,170);
    line-width: 2;
    line-join: round;
    line-cap: round;
  }
  
  [waterway='wadi']{
    [zoom>=13][zoom<16]{
      line-color: @water;
      line-width: 1;
      line-join: round;
      line-cap: round;
      line-dasharray: 4, 4;
    }
    [zoom>=16][zoom<= @max-zoom]{
      line-color: @water;
      line-width: 2;
      line-join: round;
      line-cap: round;
      line-dasharray: 4, 4;
    }
  }
  [waterway='river']{
    [zoom=12]{
      line-color: @water;
      line-width: 2;
      line-join: round;
      line-cap: round;
    }
    [zoom=13]{
      line-color: @water;
      line-width: 3;
      line-join: round;
      line-cap: round;
      text-placement: line;
      text-spacing: 400;
      text-face-name: @book-fonts;
      text-size: 9;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";
    }
    [zoom=14]{
      line-color: @water;
      line-width: 5;
      line-join: round;
      line-cap: round;
      text-placement: line;
      text-spacing: 400;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";      
    }
    [zoom>=15][zoom< 18]{
      line-color: @water;
      line-width: 6;
      line-join: round;
      line-cap: round;
      text-placement: line;
      text-spacing: 400;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]"; 
    }
    [zoom>=18][zoom<= @max-zoom]{
      line-color: @water;
      line-width: 12;
      line-join: round;
      line-cap: round;
      text-placement: line;
      text-spacing: 400;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]"; 
    }
  }
  [waterway='canal'][disused!='yes']{
    [zoom=12]{
      line-color: @water;
      line-width: 3;
      line-join: round;
      line-cap: round;
    }
    [zoom=13]{
      line-color: @water;
      line-width: 4;
      line-join: round;
      line-cap: round;
      text-placement: line;
      text-face-name: @book-fonts;
      text-size: 8;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]"; 
    }
  }
  [waterway='stream'],[waterway='ditch'],[waterway='drain']{
    [zoom>=13][zoom<15]{
      line-color: @water;
      line-width: 1;
    }
  }
  [waterway='river'][tunnel='yes']{
    [zoom=14]{
      ::dash{
        line-color: @water;
        line-width: 6;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(255,255,255);
        line-width: 4;
      }
      text-placement: line;
      text-min-distance: 200;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";
    }
    [zoom>=15][zoom<= @max-zoom]{
      ::dash{
        line-color: @water;
        line-width: 7;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(255,255,255);
        line-width: 4;
      }
      text-placement: line;
      text-min-distance: 200;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";
    }
  }
  [waterway='canal'][tunnel='yes']{
    [zoom>=14][zoom<=@max-zoom]{
      ::dash{
        line-color: @water;
        line-width: 7;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(255,255,255);
        line-width: 3;
      }
      text-placement: line;
      text-face-name: @book-fonts;
      text-size: 9;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";
    }
  }
  [waterway='canal'][tunnel!='yes'][disused!='yes']{
    [zoom>=14][zoom<=@max-zoom]{
      line-color: @water;
      line-width: 7;
      line-join: round;
      line-cap: round;
      text-placement: line;
      text-face-name: @book-fonts;
      text-size: 9;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";
    }
  }
  [waterway='derelict_canal'],[waterway='canal'][disused='yes']{
    [zoom=12]{
      line-color: rgb(181,228,208);
      line-width: 1.5;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 4, 4;
    }
    [zoom=13]{
      line-color: rgb(181,228,208);
      line-width: 2.5;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 4, 6;
      text-placement: line;
      text-spacing: 600;
      text-face-name: @book-fonts;
      text-size: 9;
      text-halo-radius: 1;
      text-fill: rgb(128,209,174);
      text-name: "[name]"; 
    }
    [zoom>=14]{
      line-color: rgb(181,228,208);
      line-width: 4.5;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 4, 8;
      text-placement: line;
      text-spacing: 600;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(128,209,174);
      text-name: "[name]";       
    }
  }
  [waterway='stream'][tunnel='yes']{
    [zoom>=15][zoom<=@max-zoom]{
      ::dash{
        line-color: @water;
        line-width: 2.4;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(243,247,247);
        line-width: 1.2;
      }
    }
  }
  [waterway='stream'][tunnel!='yes']{
    [zoom>=15][zoom<=@max-zoom]{
      line-color: @water;
      line-width: 2;
      text-placement: line;
      text-spacing: 600;
      text-face-name: @book-fonts;
      text-size: 8;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";  
    }
  }
  [waterway='drain'][tunnel='yes'],[waterway='ditch'][tunnel='yes']{
    [zoom>=15][zoom<=@max-zoom]{
      ::dash{
        line-color: @water;
        line-width: 2;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(243,247,247);
        line-width: 1;
      }
    }
  }
  [waterway='drain'][tunnel!='yes'],[waterway='ditch'][tunnel!='yes']{
    [zoom>=15][zoom<=@max-zoom]{
      line-color: @water;
      line-width: 1;
      text-placement: line;
      text-spacing: 600;
      text-face-name: @book-fonts;
      text-size: 8;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";
    }
  }
}
.cliffs{
  [natural='cliff']{
    [zoom>=13][zoom<15]{
      line-pattern-file: url("symbols/cliff.png");
    }
    [zoom>=15][zoom<=@max-zoom]{
      line-pattern-file: url("symbols/cliff2.png");
    }
  }
  [man_made='embankment']{
    [zoom>=15]{
      line-pattern-file: url("symbols/cliff.png");
    }
  }
}
#waterway-bridges{
  [zoom>=14][zoom<=@max-zoom]{
    ::dash{
      line-color: rgb(0,0,0);
      line-width: 7;
      line-join: round;    
    }
    line-color: @water;
    line-width: 6;
    line-join: round;
    line-cap: round;    
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(102,153,204);
    text-name: "[name]";
    text-placement: line;
  }
}
#water-lines-casing{
  [waterway='stream'],[waterway='ditch'],[waterway='drain']{
    [zoom>=13][zoom<15]{
      line-color: rgb(255,255,255);
      line-width: 1.5;
    }
  }
  [waterway='stream'][zoom>=15][zoom<=@max-zoom]{
    line-color: rgb(255,255,255);
    line-width: 2.5;
  }
}
#amenity-symbols-poly-natural, #amenity-symbols-natural {
    [natural ='volcano'] {
        [zoom > 10] {
            point-file: 'symbols/volcano.png';
            point-placement: 'interior';
        }
    }
    [natural ='cave_entrance'] {
        [zoom > 14] {
            point-file: 'symbols/poi_cave.p.16.png';
            point-placement: 'interior';
        }
    }
    [natural ='spring'] {
        [zoom > 13] {
            point-file: 'symbols/spring.png';
            point-placement: 'interior';
        }
    }
    [natural ='tree'] {
        [zoom = 16] {
            point-file: 'symbols/tree.png';
            point-placement: 'interior';
        }
        [zoom > 16] {
            point-file: 'symbols/tree2.png';
            point-placement: 'interior';
        }
    }
 
    [natural ='peak'] {
        [zoom > 10] {
            point-file: 'symbols/peak.png';
            point-placement: 'interior';
        }
    }

}

#islands {
  polygon-opacity:1;
  polygon-fill:@defaultland;
}
