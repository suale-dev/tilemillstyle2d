Map {
  background-color: @water
}
#world{
  [zoom < 10]{
    polygon-fill: rgb(242,239,233);
  }
} 
#coast-poly{
  [zoom >= 10]{
    polygon-fill: rgb(242,239,233);
  }
}
#builtup
{
  [zoom >=8][zoom<11]{
    polygon-fill: rgb(221,221,221);
  }
}
@necountriescolor: rgb(128,128,128);
#necountries{
  [zoom >=1][zoom < 4]{
    line-color: @necountriescolor;
    line-width: 0.5;
  }
}
#nepopulated[SCALERANK = 1][zoom>=3][zoom<5]{
    text-face-name: @book-fonts;
    text-name:[NAMEASCII];
    text-fill: @necountriescolor; 
    text-size:8;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:1;
    text-dy: 2;
}
#border-countries{
  [zoom>=4]{
    line-color: @border-country;
    line-width: 0.5;
  }
}
#border-city{
  [zoom>=7]{
    line-color: @border-city;
    line-width: 1;
    line-dasharray: 4, 2;
  }
}
@landcover-swimmingpoll-line: rgb(0,0,255);
@landcover-playground-fill: rgb(204,255,241);
@landcover-playground-line: rgb(102,102,102);
#landcover-leisure{
  [leisure='swimming_pool'][zoom >=14]{
    polygon-fill: @water;
    line-color: rgb(0,0,255);
    line-width: 0.5;
  }
  [leisure='playground'][zoom >= 13]{
    polygon-fill: rgb(204,255,241) ;
    line-color: rgb(102,102,102);
    line-width: 0.3;
  }
}

#landcover-tourism{
  [tourism='camp_site'],[tourism='caravan_site'],[tourism='picnic_site']{
    [zoom >=13]{
      polygon-fill: rgb(204,255,153);
      polygon-opacity: 0.5;
      line-color: rgb(102,102,102);
      line-width: 0.3;
    }
  }
  [tourism='attraction'][zoom>=10]{
    polygon-fill: rgb(242,202,234);
  }
  [tourism='zoo'][zoom>=10]{
    polygon-pattern-file: url("symbols/zoo.png");
  }
}

#landcover-landuse{
  [landuse='quarry'][zoom>=11]{
    polygon-pattern-file: url("symbols/quarry2.png");
    line-color: rgb(128,128,128);
    line-width: 0.5;
  }
  [landuse='vineyard'][zoom<13][zoom>=10]{
    polygon-fill: rgb(171,223,150);
  }
  [landuse='orchard'][zoom>=10]{
    polygon-pattern-file: url("symbols/orchard.png");
  }
  [landuse='vineyard'][zoom>=13]{
    polygon-pattern-file: url("symbols/vineyard.png");
  }
  [landuse='cemetery'],[landuse='grave_yard'],[amenity='grave_yard']{
    [zoom<15][zoom>=10]{
      polygon-fill: rgb(170,203,175);
    }
  }
  [landuse='residential'][zoom>=10]{
    polygon-fill: rgb(221,221,221);
  }
  [landuse='garages'][zoom>=12]{
    polygon-fill: rgb(153,153,102);
    polygon-opacity: 0.2;
  }
  [landuse='field'],[natural='field']{
    [zoom <14][zoom >=10]{
      polygon-fill: rgb(102,102,0);
      polygon-opacity: 0.2;
    }
    [zoom>=14]{
      polygon-fill: rgb(102,102,0);
      polygon-opacity: 0.2;
      line-color: rgb(102,102,0);
      line-width: 0.3;
      line-opacity: 0.4;
    }
  }
  [landuse='meadow'],[landuse='grass']{
    [zoom>=10]{
      polygon-fill: rgb(207,236,168);
    }
  }
  [leisure='park'],[leisure='recreation_ground']{
    [zoom>=10]{
      polygon-fill: rgb(182,253,182);
      polygon-opacity: 0.6;
    }
  }
    [leisure='common'][zoom>=10]{
    polygon-fill: rgb(207,236,168);
  }
  [leisure='garden'][zoom>=10]{
    polygon-fill: rgb(207,236,168);
  }
  [leisure='golf_course'][zoom>=10]{
    polygon-fill: rgb(181,227,181);
  }
  [landuse='allotments']{
    [zoom>=10][zoom<14]{
      polygon-fill: rgb(229,199,171);
    }
    [zoom>=14]{
      polygon-pattern-file: url("symbols/allotments.png");
    }
  }
  [landuse='forest']{
    [zoom>=8][zoom<14]{
      polygon-fill: rgb(141,197,108);
    }
    [zoom>=14]{
      polygon-pattern-file: url("symbols/forest.png");
    }
  }
  [landuse='farmyard'][zoom>=9]{
	polygon-fill: rgb(221,191,146);
  }
  [landuse='farm'],[landuse='farmland'][zoom>=9]{
    polygon-fill: rgb(234,216,189);
  }
  [landuse='recreation_ground'],[landuse='conservation']{
    [zoom>=10]{
      polygon-fill: rgb(207,236,168);
    }
  }
  [landuse='village_green'][zoom>=11]{
    polygon-fill:rgb(207,236,168);
  }
  [landuse='retail']{
    [zoom>=10]{
      polygon-fill: rgb(241,218,218);
    }
    [zoom>=15]{
      line-color: rgb(255,0,0);
      line-width: 0.3
    }
  }
  [landuse='industrial'],[landuse='railway']{
    [zoom>=10]{
      polygon-fill: rgb(223,209,214);
    }
  }
  [landuse='commercial'][zoom>=10]{
    polygon-fill: rgb(239,200,200);
  }
  [landuse='brownfield'],[landuse='landfill'],[landuse='greenfield'],[landuse='construction']{
    [zoom>=10]{
      polygon-fill: rgb(157,157,108);
      polygon-opacity: 0.7;
    }
  }
  [landuse='cemetery'][religion='jewish'],[landuse='grave_yard'][religion='jewish']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/cemetery_jewish.18.png");
    }
  }
  [landuse='cemetery'][religion='christian'],[landuse='grave_yard'][religion='christian']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/grave_yard.png");
    }
  }
  [landuse='cemetery'][religion='INT-generic'],[landuse='grave_yard'][religion='INT-generic']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/grave_yard_generic.png");
    }
  }
}
#landcover-natural{
  [natural='desert'][zoom>=8]{
    polygon-fill:rgb(227,181,122);
  }
  [natural='sand'][zoom>=10]{
    polygon-fill:rgb(255,223,136);
  }
  [natural='heath'][zoom>=10]{
    polygon-fill:rgb(214,217,159);
  }
  [natural='grassland'][zoom>=10]{
    polygon-fill:rgb(198,228,180);
  }
  [natural='scrub']{
    [zoom>=10][zoom<14]{
      polygon-fill:rgb(181,227,181);
    }
    [zoom>=14]{
      polygon-pattern-file: url("symbols/scrub.png");
    }
  }
  [natural='beach'][zoom>=13]{
    polygon-pattern-file: url("symbols/beach.png");
  }
}
#landcover-amenity{
  [amenity='university'],[amenity='college'],[amenity='school'],[amenity='hospital'],[amenity='kindergarten']{
    [zoom>=10]{
      polygon-fill: rgb(240,240,216);
    }
    [zoom>=12]{
      line-color: rgb(165,42,42);
      line-width: 0.3;
    }
  }
  [amenity='parking']{
    [zoom>=10]{
      polygon-fill: rgb(247,239,183);
    }
    [zoom>=15]{
      line-color: rgb(238,238,209);
      line-width: 0.3;
    }
  }
  [amenity='prison'][zoom>=14]{
    polygon-pattern-file: url("symbols/amenity_prison.png");
    line-color: rgb(85,85,85);
    line-width: 0.3;
  }
  [amenity='grave_yard'][religion='jewish']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/cemetery_jewish.18.png");
    }
  }
  [amenity='grave_yard'][religion='christian']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/grave_yard.png");
    }
  }
  [amenity='grave_yard'][religion='INT-generic']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/grave_yard_generic.png");
    }
  }
}
#landcover{
  [military='barracks'][zoom>=10]{
    polygon-fill: rgb(255,143,143);
  }
  [military='danger_area']{
    [zoom<11][zoom>=9]{
      polygon-fill: rgb(255,192,203);
      polygon-opacity: 0.3;
    }
    [zoom>=11]{
      polygon-pattern-file: url("symbols/danger.png");
    }
  }

  [power='station'],[power='generator']{
    [zoom>=10][zoom<12]{
      polygon-fill: rgb(187,187,187);
    }
    [zoom>=12]{
      polygon-fill: rgb(187,187,187);
      line-color: rgb(85,85,85);
      line-width: 0.4;
    }
  }
  [power='sub_station'][zoom>=13]{
    polygon-fill: rgb(187,187,187);
    line-color: rgb(85,85,85);
    line-width: 0.4;
  }

  [aeroway='apron'][zoom>=12]{
    polygon-fill: rgb(233,209,255);
  }
  [aeroway='aerodrome'][zoom>=12]{
    polygon-fill: rgb(204,204,204);
    polygon-opacity: 0.2;
    line-color: rgb(85,85,85);
    line-width: 0.2;
  }
  [highway='services'],[highway='rest_area']{
    [zoom>=14]{
      polygon-fill: rgb(239,200,200);
    }
  }
}
#landcover_line{
  [zoom>=14][zoom<16]{
    line-color: rgb(242,239,233);
    line-width: 3;
    line-join: round;
    line-cap: square;
  }
  [zoom>=16]{
    line-color: rgb(242,239,233);
    line-width: 6;
    line-join: round;
    line-cap: square;
  }
}
#sports_grounds{
  [leisure='sports_centre'],[leisure='stadium']{
    [zoom>=10]{
      polygon-fill: rgb(51,204,153);
    }
  }
  [leisure='track'][zoom>=10]{
    polygon-fill: rgb(116,220,186);
    line-color: rgb(136,136,136);
    line-width: 0.5;
  }
  [leisure='pitch'][zoom>=10]{
    polygon-fill: rgb(138,211,175);
    line-color: rgb(136,136,136);
    line-width: 0.5;
  }
}
#water-lines-casing{
  [waterway='stream'],[waterway='ditch'],[waterway='drain']{
    [zoom>=13][zoom<15]{
      line-color: rgb(255,255,255);
      line-width: 1.5;
    }
  }
  [waterway='stream'][zoom>=15]{
    line-color: rgb(255,255,255);
    line-width: 2.5;
  }
}
//water color
#water_areas{
  [natural='glacier']{
    [zoom>=6][zoom<8]{
      line-color: rgb(153,204,255);
      line-width: 1.5;
      line-dasharray: 4, 2;
      polygon-pattern-file: url("symbols/glacier.png");
    }
    [zoom>=8]{
      line-color: rgb(153,204,255);
      line-width: 1.5;
      line-dasharray: 4, 2;
      polygon-pattern-file: url("symbols/glacier2.png");
    }
  }
  [waterway='dock'],[waterway='mill_pond'],[waterway='canal']{
    [zoom>=9]{
      polygon-gamma: 0.75;
      polygon-fill: @water;
    }
  }
  [landuse='basin'][zoom>=7]{
    polygon-gamma: 0.75;
    polygon-fill: @water;
  }
  [natural='lake'],[natural='water'],[landuse='reservoir'],[waterway='riverbank'],[landuse='water'],[natural='bay']{
    [zoom>=6]{
      polygon-gamma: 0.75;
      polygon-fill: @water;
    }
  }
  [natural='mud'][zoom>=13]{
    polygon-pattern-file: url("symbols/mud.png");
  }
  [natural='land'][zoom>=10]{
    polygon-fill: @water;
  }
}
#water-areas-overlay{
  [natural='marsh'],[natural='wetland']{
    [zoom>=13]{
      polygon-pattern-file: url("symbols/marsh.png");
    }
  }
}
#glaciers-text{
  [way_area>=10000000][zoom>=10]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
  [way_area>=5000000][way_area<10000000][zoom>=11]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
  [way_area<5000000][zoom>=12]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
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
  [waterway='weir'][zoom>=15]{
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
    [zoom>=16]{
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
    [zoom>=15][zoom<17]{
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
    [zoom=17]{
      line-color: @water;
      line-width: 10;
      line-join: round;
      line-cap: round;
      text-placement: line;
      text-spacing: 400;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]"; 
    }
    [zoom>=18]{
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
    [zoom>=15][zoom<17]{
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
    [zoom=17]{
      ::dash{
        line-color: @water;
        line-width: 11;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(255,255,255);
        line-width: 7;
      }
      text-placement: line;
      text-min-distance: 200;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-fill: rgb(102,153,204);
      text-name: "[name]";
    }
    [zoom>=18]{
      ::dash{
        line-color: @water;
        line-width: 13;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(255,255,255);
        line-width: 9;
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
    [zoom>=14][zoom<17]{
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
    [zoom>=17]{
      ::dash{
        line-color: @water;
        line-width: 11;
        line-dasharray: 4, 2;
      }
      ::line{
        line-color: rgb(255,255,255);
        line-width: 7;
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
    [zoom>=14][zoom<17]{
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
  [waterway='canal'][tunnel!='yes'][disused!='yes'][lock!='yes']{
    [zoom>=17]{
      line-color: @water;
      line-width: 7;
      line-join: round;
      line-cap: round;
      text-wrap-width: 20;
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
    [zoom>=15]{
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
    [zoom>=15]{
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
    [zoom>=15]{
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
    [zoom>=15]{
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
#dam{
  [zoom>=13]{
    line-color: rgb(68,68,68);
    line-width: 2;
    line-join: round;
    line-cap: round;
  }
  [zoom>=15]{
    text-face-name: @book-fonts;
    text-size: 8;
    text-halo-radius: 1;
    text-fill: rgb(34,34,34);
    text-name: "[name]";    
  }
}
#marinas-area{
  [zoom>=14][zoom<16]{
    line-color: rgb(0,0,255);
    line-width: 1;
    line-opacity: 0.5;
    line-dasharray: 6, 2;
  }
  [zoom>=16]{
    line-color: rgb(0,0,255);
    line-width: 2;
    line-opacity: 0.5;
    line-dasharray: 6, 2;
  }
}
#piers-area{
  [zoom>=12]{
    polygon-fill: rgb(242,239,233);
  }
}
#piers{
  [man_made='breakwater'],[man_made='groyne']{
    [zoom>=11][zoom<13]{
      line-color: rgb(170,170,170);
      line-width: 1;
    }
    [zoom>=13][zoom<16]{
      line-color: rgb(170,170,170);
      line-width: 2;
    }
    [zoom>=16]{
      line-color: rgb(170,170,170);
      line-width: 4;
    }
  }
  [man_made='pier']{
    [zoom>=11][zoom<13]{
      line-color: rgb(242,239,233);
      line-width: 1.5;
    }
    [zoom>=13][zoom<16]{
      line-color: rgb(242,239,233);
      line-width: 3;
    }
    [zoom>=16]{
      line-color: rgb(242,239,233);
      line-width: 7;
    }
  }
}
#locks{
  [waterway='lock_gate'][zoom>=17]{
    point-file: url("symbols/lock_gate.png");
  }
}
#tunnels{
  ::casing{
    [highway='motorway'],[highway='motorway_link']{
      [zoom=12]{
        line-color: @roadCase;
        line-width: 3;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @roadCase;
        line-width: 6.5;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: @roadCase;
        line-width: 10;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: @roadCase;
        line-width: 13;
        line-dasharray: 4, 2;
      }
    }
    [highway='trunk'],[highway='trunk_link']{
      [zoom=12]{
        line-color: @primaryroadCase;
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @primaryroadCase;
        line-width: 7.5;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: @primaryroadCase;
        line-width: 11.5;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: @primaryroadCase;
        line-width: 16;
        line-dasharray: 4, 2;
      }
    }
    [highway='primary'],[highway='primary_link']{
      [zoom=12]{
        line-color: @roadCase;
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @roadCase;
        line-width: 8;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: @roadCase;
        line-width: 11;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: @roadCase;
        line-width: 14;
        line-dasharray: 4, 2;
      }
    }
    [highway='secondary'],[highway='secondary_link']{
      [zoom=12]{
        line-color: @roadCase;
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @roadCase;
        line-width: 10;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: @roadCase;
        line-width: 12;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: @roadCase;
        line-width: 17;
        line-dasharray: 4, 2;
      }
    }
    [highway='tertiary'],[highway='tertiary_link']{
      [zoom=13]{
        line-color: @roadCase;
        line-width: 6;
        line-dasharray: 4, 2;
      }
      [zoom=14]{
        line-color: @roadCase;
        line-width: 7.5;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: @roadCase;
        line-width: 11;
        line-dasharray: 4, 2;       
      }
    }
    [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: @roadCase;
        line-width: 3;
        line-dasharray: 4, 2;
      }
      [zoom=14]{
        line-color: @roadCase;
        line-width: 4.5;
        line-dasharray: 4, 2;
      }
      [zoom=15]{
        line-color: @roadCase;
        line-width: 8;
        line-dasharray: 4, 2;
      }
      [zoom=16]{
        line-color: @roadCase;
        line-width: 11;
        line-dasharray: 4, 2;
      }
    }
    [highway='tertiary'],[highway='tertiary_link'],[highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom>=17]{
        line-color: @roadCase;
        line-width: 16;
        line-dasharray: 4, 2;
      }
    }
  }
  ::fill{
    [highway='motorway'],[highway='motorway_link']{
      [zoom=12]{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 8.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 11;
        line-join: round;
        line-cap: round;
      }
    }
    [highway='trunk'],[highway='trunk_link']{
      [zoom=12]{
        line-color: @primaryroad;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @primaryroad;
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: @primaryroad;
        line-width: 7;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: @primaryroad;
        line-width: 11;
        line-join: round;
        line-cap: round;
      }      
    }
    [highway='primary'],[highway='primary_link']{
      [zoom=12]{
        line-color: @road;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 6.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 9;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 12;
        line-join: round;
        line-cap: round;
      }      
    }
    [highway='secondary'],[highway='secondary_link']{
      [zoom=12]{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 8;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 10;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 14;
        line-join: round;
        line-cap: round;
      }      
    }
    [highway='tertiary'],[highway='tertiary_link']{
      [zoom=13]{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
      [zoom=14]{
        line-color: @road;
        line-width: 6.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 9.4;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 13;
        line-join: round;
        line-cap: round;
      }
    }
   [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom=14]{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
      [zoom=15]{
        line-color: @road;
        line-width: 6.5;
        line-join: round;
        line-cap: round;        
      }
      [zoom=16]{
        line-color: @road;
        line-width: 9.4;
        line-join: round;
        line-cap: round;        
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 13;
        line-join: round;
        line-cap: round;        
      }
    }
  }
}
#citywalls{
  [zoom=14]{
    line-color: rgb(128,128,128);
    line-width: 4;
    line-opacity: 0.8;
    line-join: round;
  }
  [zoom=15]{
    line-color: rgb(128,128,128);
    line-width: 6;
    line-opacity: 0.8;
    line-join: round;    
  }
  [zoom>=16]{
    line-color: rgb(128,128,128);
    line-width: 9;
    line-opacity: 0.8;
    line-join: round;    
  }
}
#castle_walls{
  [zoom>=14][zoom<16]{
    line-color: rgb(153,153,153);
    line-width: 1;
  }
  [zoom>=16]{
    line-color: rgb(153,153,153);
    line-width: 2;    
  }
}
#landuse_overlay{
  [landuse='military'][zoom>=10]{
    polygon-pattern-file: url("symbols/military_red_hz2.png");
    line-color: rgb(255,85,85);
    line-width: 3;
    line-opacity: 0.33;
  }
  [landuse='nature_reserve']{
    [zoom>=10][zoom<14]{
      polygon-pattern-file: url("symbols/nature_reserve5.png");
      line-color: rgb(102,204,51);
      line-width: 0.5;
    }
    [zoom>=14]{
      polygon-pattern-file: url("symbols/nature_reserve6.png");
      line-color: rgb(102,204,51);
      line-width: 1;     
    }
  }
}
#turning_circle-casing{
  [int_tc_type='tertiary']{
    [zoom>=15][zoom<17]{
      point-file: url("symbols/turning_circle-tert-casing.18.png");
      point-allow-overlap: true;
      point-ignore-placement: true;
    }
    [zoom>=17]{
      point-file: url("symbols/turning_circle-tert-casing.24.png");
      point-allow-overlap: true;
      point-ignore-placement: true;
    }
  }
  [int_tc_type='residential'],[int_tc_type='unclassified']{
    [zoom=15]{
      point-file: url("symbols/turning_circle-uncl-casing.14.png");
      point-allow-overlap: true;
      point-ignore-placement: true;
    }
    [zoom=16]{
      point-file: url("symbols/turning_circle-uncl-casing.18.png");
      point-allow-overlap: true;
      point-ignore-placement: true;      
    }
    [zoom>=17]{
      point-file: url("symbols/turning_circle-uncl-casing.24.png");
      point-allow-overlap: true;
      point-ignore-placement: true;      
    }    
  }
  [int_tc_type='living_street']{
    [zoom=15]{
      point-file: url("symbols/turning_circle-uncl-fill.14.png");
      point-allow-overlap: true;
      point-ignore-placement: true;    
    }
    [zoom=16]{
      point-file: url("symbols/turning_circle-uncl-fill.18.png");
      point-allow-overlap: true;
      point-ignore-placement: true;    
    }
    [zoom>=17]{
      point-file: url("symbols/turning_circle-uncl-fill.24.png");
      point-allow-overlap: true;
      point-ignore-placement: true;    
    }
  }
  [int_tc_type='service']{
    [zoom=16]{
      point-file: url("symbols/turning_circle-uncl-casing.14.png");
      point-allow-overlap: true;
      point-ignore-placement: true;        
    }
    [zoom>=17]{
      point-file: url("symbols/turning_circle-uncl-casing.16.png");
      point-allow-overlap: true;
      point-ignore-placement: true;        
    }
  }
}
.cliffs{
  [natural='cliff']{
    [zoom>=13][zoom<15]{
      line-pattern-file: url("symbols/cliff.png");
    }
    [zoom>=15]{
      line-pattern-file: url("symbols/cliff2.png");
    }
  }
  [man_made='embankment']{
    [zoom>=15]{
      line-pattern-file: url("symbols/cliff.png");
    }
  }
}
.barriers{
  [barrier='embankment']{
    [zoom>=14]{
      line-color: rgb(68,68,68);
      line-width: 0.4;
    }
  }
  [natural='hedge'],[barrier='hedge']{
    [zoom>=16]{
      line-color: rgb(174,209,160);
      line-width: 3;
    }
  }
  [barrier!=''][barrier!='hedge'][barrier!='embankment']{
    [zoom>=16]{
      line-color: rgb(68,68,68);
      line-width: 0.4;
    }
  }
}
.barriers_area{

  [natural='hedge'],[barrier='hedge']{
    [zoom>=16]{
      polygon-fill: rgb(174,209,160);
    }
  }
  [barrier!=''][barrier!='hedge']{
    [zoom>=16]{
      polygon-fill: rgb(174,209,160);
    }
  }
}
#highway-area-casing{
  [highway='residential'],[highway='unclassified']{
    [zoom>=14]{
      line-color: rgb(153,153,153);
      line-width: 1;
    }
  }
  [highway='pedestrian'],[highway='service'],[highway='footway'],[highway='path']{
    [zoom>=14]{
      line-color: rgb(128,128,128);
      line-width: 1;
    }
  }
  [highway='track'][zoom>=14]{
    line-color: rgb(153,102,0);
    line-width: 2;
  }
  [highway='platform'],[railway='platform']{
    [zoom>=16]{
      line-color: rgb(128,128,128);
      line-width: 2;
      line-join: round;
      line-cap: round;
    }
  }
}
#minor-roads-casing{
  [highway='motorway'][tunnel!='yes']{
    [zoom=12]{
      line-color: @roadCase;
      line-width: 3;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @roadCase;
      line-width: 6.5;
      line-join: round;
    }
    [zoom>=15][zoom<17]{
      line-color: @roadCase;
      line-width: 10;
      line-join: round;      
    }
    [zoom>=17]{
      line-color: @roadCase;
      line-width: 13;
      line-join: round;      
    }
  }
  [highway='trunk'][tunnel!='yes']{
    [zoom=12]{
      line-color: @primaryroadCase;
      line-width: 4;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @primaryroadCase;
      line-width: 7.5;
      line-join: round;
    }
    [zoom>=15][zoom<17]{
      line-color: @primaryroadCase;
      line-width: 11.5;
      line-join: round;  
    }
    [zoom>=17]{
      line-color: @primaryroadCase;
      line-width: 16;
      line-join: round;     
    }
  }
  [highway='primary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @roadCase;
      line-width: 4;
      line-join: round;      
    }
    [zoom>=13][zoom<15]{
      line-color: @roadCase;
      line-width: 7;
      line-join: round;      
    }
    [zoom>=15][zoom<17]{
      line-color: @roadCase;
      line-width: 10;
      line-join: round;      
    }
    [zoom>=17]{
      line-color: @roadCase;
      line-width: 16;
      line-join: round;      
    }
  }
  [highway='secondary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @roadCase;
      line-width: 3;
      line-join: round;  
      line-cap: round;          
    }
    [zoom>=13][zoom<15]{      
      line-color: @roadCase;
      line-width: 7;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15][zoom<17]{
      line-color: @roadCase;
      line-width: 10;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=17]{
      line-color: @roadCase;
      line-width: 16;
      line-join: round;  
      line-cap: round; 
    }
  }
  [highway='tertiary'][tunnel!='yes']{
    [zoom=13]{      
      line-color: @roadCase;
      line-width: 6;
      line-join: round;  
      line-cap: round; 
    }
    [zoom=14]{
      line-color: @roadCase;
      line-width: 7.5;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15][zoom<17]{
      line-color: @roadCase;
      line-width: 10;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=17]{
      line-color: @roadCase;
      line-width: 16;
      line-join: round;  
      line-cap: round; 
    }
  }
  [tunnel!='yes']{
    [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: @roadCase;
        line-width: 1;
        line-join: round;
        line-cap: round;
      }
      [zoom=14]{
        line-color: @roadCase;
        line-width: 3;
        line-join: round;
        line-cap: round;      
      }
      [zoom=15]{
        line-color: @roadCase;
        line-width: 4;
        line-join: round;
        line-cap: round;         
      }
      [zoom=16]{
        line-color: @roadCase;
        line-width: 6;
        line-join: round;
        line-cap: round;         
      }
      [zoom>=17]{
        line-color: @roadCase;
        line-width: 10;
        line-join: round;
        line-cap: round;           
      }
    }
  }
  [highway='service'][tunnel!='yes']{
    [zoom=15]{
      line-color: @roadCase;
      line-width: 2.5;
      line-join: round;
      line-cap: round;
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-width: 5;
      line-join: round;
      line-cap: round;         
    }
  }
  [highway='service'][tunnel='yes']{
    [zoom=15]{
      line-color: @roadCase;
      line-color: 2.5;
      line-dasharray: 4, 2;
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-color: 5;
      line-dasharray: 4, 2;
    }
  }
  [highway='pedestrian'][tunnel!='yes']{
    [zoom>=14][zoom<16]{
      line-color: @roadCase;
      line-width: 2;
      line-join: round;
      line-cap: round;       
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-width: 6;
      line-join: round;
      line-cap: round;        
    }
  }
  [highway='pedestrian'][tunnel='yes']{
    [zoom=14][zoom<16]{
      line-color: @roadCase;
      line-width: 2;
      line-dasharray: 4, 2;
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-width: 6;
      line-dasharray: 4, 2;
    }
  }
  [highway='living_street']{
    [zoom=14]{
      line-color: @roadCase;
      line-width: 2;
      line-join: round;
      line-cap: round;
    }
    [zoom=15]{
      line-color: @roadCase;
      line-width: 6;
      line-join: round;
      line-cap: round;
    }
    [zoom=16]{
      line-color: @roadCase;
      line-width: 8;
      line-join: round;
      line-cap: round;
    }
    [zoom>=17]{
      line-color: @roadCase;
      line-width: 10;
      line-join: round;
      line-cap: round;
    }
  }  
}
#minor-roads-fill{
  ::links{
    [highway='motorway'][tunnel!='yes']{
      [zoom=12]{
        line-color: @road;
        line-width: 2.5;
        line-join: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 5;
        line-join: round;
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 8;
        line-join: round;      
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 12;
        line-join: round;      
      }
    }
    [highway='trunk_link'][tunnel!='yes']{
      [zoom=12]{
        line-color: @primaryroad;
        line-width: 2.5;
        line-join: round;
        line-cap: round; 
      }
      [zoom>=13][zoom<15]{
        line-color:  @primaryroad;
        line-width: 5;
        line-join: round;
        line-cap: round; 
      }
      [zoom>=15][zoom<17]{
        line-color:  @primaryroad;
        line-width: 8;
        line-join: round;
        line-cap: round; 
      }
      [zoom>=17]{
        line-color: @primaryroad;
        line-width: 12;
        line-join: round;
        line-cap: round; 
      }
    }
    [highway='primary_link'][tunnel!='yes']{
      [zoom=12]{
        line-color: @road;
        line-width: 3;
        line-join: round; 
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 5.5;
        line-join: round; 
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 8;
        line-join: round; 
        line-cap: round;
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 14;
        line-join: round; 
      }
    }
    [highway='secondary_link'][tunnel!='yes']{
      [zoom=12]{
        line-color: @road;
        line-width: 2;
        line-join: round;  
        line-cap: round; 
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 5.5;
        line-join: round;  
        line-cap: round; 
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 8;
        line-join: round;  
        line-cap: round; 
      }
      [zoom>=17]{
        line-color: @road;
        line-width: 14;
        line-join: round;  
        line-cap: round; 
      }
    }
    [highway='tertiary_link'][tunnel!='yes']{
      [zoom=13]{
        line-color: @road;
        line-width: 4.5;
        line-join: round;  
        line-cap: round; 
      }
      [zoom=14]{
        line-color: @road;
        line-width: 6;
        line-join: round;  
        line-cap: round; 
      }
      [zoom>=15][zoom<17]{
        line-color: @road;
        line-width: 8;
        line-join: round;  
        line-cap: round; 
      }
    }
  }
  [highway='construction'][zoom>=16]{
    ::case{
      line-color: @roadCase;
      line-width: 5;
      line-join: round;
    }
    ::fill{
      line-color: @road;
      line-width: 4;
      line-join: round;
      line-dasharray: 8, 6;
    }
  }
  [highway='motorway'][tunnel!='yes']{
    [zoom=12]{
      line-color: @road;
      line-width: 2.5;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @road;
      line-width: 5;
      line-join: round;
    }
    [zoom>=15][zoom<17]{
      line-color: @road;
      line-width: 8;
      line-join: round;      
    }
    [zoom>=17]{
      line-color: @road;
      line-width: 12;
      line-join: round;      
    }
  }
  [highway='trunk'][tunnel!='yes']{
    [zoom=12]{
      line-color: @primaryroad;
      line-width: 2.5;
      line-join: round;
      line-cap: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @primaryroad;
      line-width: 5;
      line-join: round;
      line-cap: round;
    }
    [zoom>=15][zoom<17]{
      line-color: @primaryroad;
      line-width: 8;
      line-join: round;
      line-cap: round;
    }
    [zoom>=17]{
      line-color: @primaryroad;
      line-width: 12;
      line-join: round;
      line-cap: round;
    }
  }
  [highway='primary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @road;
      line-width: 3;
      line-join: round; 
      line-cap: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @road;
      line-width: 5.5;
      line-join: round; 
      line-cap: round;
    }
    [zoom>=15][zoom<17]{
      line-color: @road;
      line-width: 8;
      line-join: round; 
      line-cap: round;
    }
    [zoom>=17]{
      line-color: @road;
      line-width: 14;
      line-join: round; 
    }
  }
  [highway='secondary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @road;
      line-width: 2;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=13][zoom<15]{
      line-color: @road;
      line-width: 5.5;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15][zoom<17]{
      line-color: @road;
      line-width: 8;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=17]{
      line-color: @road;
      line-width: 14;
      line-join: round;  
      line-cap: round; 
    }
  }
  [highway='tertiary'][tunnel!='yes']{
    [zoom=13]{
      line-color: @road;
      line-width: 4.5;
      line-join: round;  
      line-cap: round; 
    }
    [zoom=14]{
      line-color: @road;
      line-width: 6;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15][zoom<17]{
      line-color: @road;
      line-width: 8;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=17]{
      line-color: @road;
      line-width: 14;
      line-join: round;  
      line-cap: round; 
    }
  }
  [highway='residential'],[highway='unclassified'],[highway='road']{
    [zoom=14]{
      line-color: @road;
      line-width: 2;
      line-join: round;
      line-cap: round; 
    }
    [zoom=15]{
      line-color: @road;
      line-width: 2.5;
      line-join: round;
      line-cap: round; 
    }
    [zoom=16]{
      line-color: @road;
      line-width: 4;
      line-join: round;
      line-cap: round; 
    }
    [zoom>=17]{
      line-color: @road;
      line-width: 8;
      line-join: round; 
    }
  }
  [highway='pedestrian']{
    [zoom>=16]{
      line-color: @road;
      line-width: 4.5;
      line-join: round;
      line-cap: round;        
    }
  }
  [highway='living_street']{
    [zoom=15]{
      line-color: @road;
      line-width: 4.5;
      line-join: round;        
      line-cap: round;
    }
    [zoom=16]{
      line-color: @road;
      line-width: 6.5;
      line-join: round;        
      line-cap: round;
    }
    [zoom>=17]{
      line-color: @road;
      line-width: 8;
      line-join: round;        
      line-cap: round;
    }
  }
  [highway='service']{
    [zoom=15]{
      line-color: @road;
      line-color: 2;
      line-join: round;
      line-cap: round;     
    }
    [zoom>=16]{
      line-color: @road;
      line-width: 4;
      line-join: round;
      line-cap: round;         
    }
  }
}
#minor-roads-fill-railway{
  [railway='rail'][tunnel='yes']{
    [zoom>=13]{
      line-color: @railway;
      line-width: 3;
      line-join: round;
      line-dasharray: 6, 4;
    }
  }
  [railway='disused'][highway=''],[railway='abandoned'][highway=''],[railway='construction'][highway='']{
    [zoom>=13]{
      line-color: rgb(128,128,128);
      line-width: 2;
      line-join: round;
      line-dasharray: 2, 4;
    }
  }
  [railway='rail'][tunnel!='yes']{
    [zoom=13]{
      ::case{
        line-color: @railway;
        line-width: 3;
        line-join: round;
      }
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 8, 12;
      }
    }
  }
  [railway='rail'][tunnel!='yes']{
    [zoom>=14]{
      ::case{
        line-color: @railway;
        line-width: 3;
        line-join: round;
      }
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 0, 11,8, 1;
      }
    }
  }
  [railway='spur-siding-yard']{
    [zoom>=11][zoom<13]{
      line-color:rgb(170,170,170);
      line-width: 1;
      line-join: round; 
    }
  }
  [railway='spur-siding-yard'][tunnel='yes']{
    [zoom>=13]{
      line-color: @railway;
      line-opacity: 0.7;
      line-width: 2;
      line-join: round;
      line-dasharray: 6, 4;
    }
  }
  [railway='spur-siding-yard'][tunnel!='yes']{
    [zoom>=13]{
      ::case{
        line-color: @railway;
        line-width: 2;
        line-join: round;
        line-opacity: 0.7
      }
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 0.8;
        line-join: round;
        line-dasharray: 0, 11,8, 1;
      }
    }
  }
  [railway='narrow_gauge'][tunnel!='yes'],[railway='funicular'][tunnel!='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
    }
  }
  [railway='narrow_gauge'][tunnel='yes'],[railway='funicular'][tunnel='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
      line-dasharray: 2, 4;
    }
  }
  [railway='miniature']{
    [zoom>=15]{
      ::case{
        line-color: @railway;
        line-width: 3;
      }
      ::dash{
        line-color: @railway;
        line-width: 1.2;
        line-dasharray: 1, 10;
      }
    }
  }
  [railway='tram'][tunnel='yes']{
    [zoom>=13][zoom<15]{
      line-color: rgb(68,68,68);
      line-width: 1;
      line-dasharray: 5, 3;
    }
    [zoom>=15]{
      line-color: rgb(68,68,68);
      line-width: 2;
      line-dasharray: 5, 3;      
    }
  }
  [railway='light_rail'][tunnel='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
      line-dasharray: 5, 3;
    }
  }
  [railway='light_rail'][tunnel!='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
    }
  }
  [railway='subway'][tunnel='yes']{
    [zoom>=12]{
      line-color: @railway;
      line-width: 2;
      line-dasharray: 5, 3;
    }
  }
  [railway='subway'][tunnel!='yes']{
    [zoom>=12]{
      line-color: @railway;
      line-width: 2;
    }
  }
  [aeroway='runway'][bridge!='yes']{
    [zoom>=14]{
      line-color: rgb(187,187,204);
      line-width: 18;
    }
  }
  [aeroway='taxiway']{
    [zoom>=11][zoom<14]{
      line-color: rgb(187,187,204);
      line-width: 1;
    }
  }
  [aeroway='taxiway'][bridge!='yes']{
    [zoom=14]{
      line-color: rgb(187,187,204);
      line-width: 4;
    }
    [zoom>=15]{
      line-color: rgb(187,187,204);
      line-width: 6;
    }
  }
}
#highway-area-fill{
  [highway='living_street'][zoom>=14]{
    polygon-fill: rgb(204,204,204);
  }
  [highway='residential'],[highway='unclassified'],[highway='service']{
    [zoom>=14]{
      polygon-fill: rgb(255,255,255);
    }
  }
  [highway='pedestrian'],[highway='footway'],[highway='path']{
    [zoom>=14]{
      polygon-fill: rgb(237,237,237);      
    }
  }
  [highway='track']{
    [zoom>=14]{
      polygon-fill: rgb(223,204,102);
    }
  }
  [highway='platform'],[railway='platform']{
    [zoom>=16]{
      polygon-fill: rgb(187,187,187);
      polygon-gamma: 0.65;
    }
  }
  [aeroway='runway']{
    [zoom>=11]{
      polygon-fill: rgb(187,187,204);
    }
  }
  [aeroway='taxiway']{
    [zoom>=13]{
      polygon-fill: rgb(187,187,204);
    }
  }
  [aeroway='helipad']{
    [zoom>=16]{
      polygon-fill: rgb(187,187,204);
    }
  }
}
#buildings-lz{
  [railway='station'],[building='station']{
    [zoom>=10]{
      polygon-fill: rgb(212,170,170);
    }
  }
  [building='supermarket'][zoom>=10]{
    polygon-fill: rgb(212,170,170);    
    polygon-opacity: 0.5;
  }
  [amenity='place_of_worship']{
    [zoom>=10][zoom<15]{
      polygon-fill: rgb(119,119,119);    
      polygon-opacity: 0.5;    
    }
    [zoom>=15]{
      polygon-fill: rgb(170,170,170);    
      polygon-opacity: 0.9;    
      line-color: rgb(17,17,17);
      line-width: 0.3;
    }
  }
}
#buildings{
  [building='INT-light'][zoom>=12]{
    polygon-fill: rgb(188,169,169);
    polygon-opacity: 0.7;
  }
  [building!='INT-light'][building!=''][zoom>=12]{
    polygon-fill: rgb(188,169,169);
    polygon-opacity:  0.9;
  }
  [building!='INT-light'][building!=''][zoom>=16]{
    polygon-fill: rgb(51,0,102);
    polygon-opacity:  0.2;
  }
  [aeroway='terminal'][zoom>=12]{
    polygon-fill: rgb(204,153,255);
  }
  [aeroway='terminal'][zoom>=14]{
    line-color: rgb(51,0,102);
    line-width: 0.2;
  }
}
#tracks-notunnel-nobridge{
  [zoom=13],[zoom>=14][tracktype!='grade1'][tracktype!='grade2'][tracktype!='grade3'][tracktype!='grade4'][tracktype!='grade5']{
    ::dash{
      line-color: rgb(153,102,0);
      line-width: 1.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 3,4;
    }
    ::line{
      line-color: rgb(255,255,255);
      line-width: 3;
      line-opacity: 0.4;
      line-join: round;
      line-cap: round;      
    }
  }
  [tracktype='grade1'][zoom>=14]{
    ::dash{
      line-color: rgb(179,119,0);
      line-width: 2;
      line-opacity: 0.7;
    }
    line-color: rgb(255,255,255);
    line-width: 3.5;
    line-opacity: 0.4;
  }
  [tracktype='grade2'][zoom>=14]{
    ::dash{     
      line-color: rgb(168,112,0);
      line-width: 1.5;
      line-opacity: 0.8;
      line-join: round;
      line-cap: round;
      line-dasharray: 9, 4;      
    }
    line-color: rgb(255,255,255);
    line-width: 3;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
  }
  [tracktype='grade3'][zoom>=14]{
    ::dash{    
      line-color: rgb(153,102,0);
      line-width: 1.5;
      line-opacity: 0.8;
      line-join: round;
      line-cap: round;
      line-dasharray: 3, 4;
    }
    line-color: rgb(255,255,255);
    line-width: 3;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
  }
  [tracktype='grade4'][zoom>=14]{
    ::dash{     
      line-color: rgb(153,102,0);
      line-width: 2;
      line-opacity: 0.8;
      line-join: round;
      line-cap: round;
      line-dasharray: 4,7,1,5;
    }  
    line-color: rgb(255,255,255);
    line-width: 3;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
  }
  [tracktype='grade5'][zoom>=14]{
    ::dash{          
      line-color: rgb(153,102,0);
      line-width: 2;
      line-opacity: 0.8;
      line-join: round;
      line-cap: round;
      line-dasharray: 1,5;
    }  
    line-color: rgb(255,255,255);
    line-width: 3;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;    
  }
}
#turning_circle-fill{
  [int_tc_type='tertiary']{
    [zoom>=15][zoom<17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-tert-fill.16.png");
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-tert-fill.22.png");
    }
  }
  [int_tc_type='residential'],[int_tc_type='unclassified']{
    [zoom=15]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.12.png");
    }
    [zoom=16]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.16.png");      
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.22.png"); 
    }
  }
  [int_tc_type='living_street']{
    [zoom=15]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-livs-fill.12.png");      
    }
    [zoom=16]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-livs-fill.22.png");   
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.14.png");       
    }
  }
  [int_tc_type='service']{
    [zoom=16]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.12.png");       
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.14.png");       
    }
  }
}
#ferry-routes{
  [zoom>=7][zoom<11]{
    line-color: rgb(102,102,255);
    line-width: 0.4;
    line-dasharray: 4, 4;
  }
  [zoom>=11]{
    line-color: rgb(102,102,255);
    line-width: 0.8;
    line-dasharray: 6, 6;
  }
}
#aerialways{
  [aerialway='cable_car'],[aerialway='gondola'],[aerialway='goods']{
    [zoom>=12]{
      line-pattern-file: url("symbols/cable_car.png");
    }
  }
  [aerialway='chair_lift'],[aerialway='drag_lift'],[aerialway='t-bar'],[aerialway='j-bar'],[aerialway='platter'],[aerialway='rope_tow']{
    [zoom>=12]{
      line-pattern-file: url("symbols/chair_lift.png");      
    }
  }
}
#roads-highway{
  [highway='motorway'],[highway='motorway_link']{
    [zoom>=5][zoom<7]{
      ::case{
        line-color: @roadCase;
      	line-width: 1.5;
      }
      ::fill{
      	line-color: @road;
      	line-width: 0.5;
      }
    }
    [zoom>=7][zoom<9]{
      ::case{
        line-color: @roadCase;
      	line-width: 1.5;
      }
      ::fill{
        line-color: @road;
        line-width: 0.7;
      }
    }
    [zoom=9]{
      ::case{
        line-color: @roadCase;
        line-width: 2.5;
      }
      ::fill{
        line-color: @road;
        line-width: 1;
      }
    }
    [zoom=10]{
      ::case{
        line-color: @roadCase;
        line-width: 2.5;
      }
      ::fill{
        line-color: @road;
        line-width: 1;
      }
    }
    [zoom=11]{
      ::case{
        line-color: @roadCase;
        line-width: 3.5;
      }
      ::fill{
        line-color: @road;
        line-width: 2.5;
      }
    }
  }
  [highway='trunk'],[highway='trunk_link']{
    [zoom>=5][zoom<7]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 1.5;
      }
      ::fill{
        line-color: @primaryroad;
        line-width: 0.5;
      }
    }
    [zoom>=7][zoom<9]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 1.5;
      }
      ::fill{
        line-color: @primaryroad;
        line-width: 0.7;
      }
    }
    [zoom>=9][zoom<11]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 2.5;
      }
      ::fill{
        line-color: @primaryroad;
        line-width: 1;
      }
    }    
    [zoom=11]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 3.5;
      }
      ::fill{
        line-color: @primaryroad;
        line-width: 2.5;
      }
    }
  }
  [highway='primary'],[highway='primary_link']{
    [zoom=9]{
      line-color: @road;
      line-width: 1.2;
    }
    [zoom=10]{
      ::case{
        line-color: @roadCase;
        line-width: 2.5
      }
      ::fill{
        line-color: @road;
        line-width: 1.5;
      }
    }
    [zoom=11]{
      ::case{
        line-color: @roadCase;
        line-width: 3.5
      }
      ::fill{
        line-color: @road;
        line-width: 2.5
      }
    }
  }
}
#roads-railway{
  [railway='rail']{
    [zoom>=6][zoom<9]{
      line-color: rgb(170,170,170);
      line-width: 0.6;
    }
  }
  [railway='rail'][tunnel!='yes']{
    [zoom=9]{
      line-color: rgb(170,170,170);
      line-width: 1;
    }
    [zoom>=10][zoom<13]{
      line-color: rgb(170,170,170);
      line-width: 2;
    }
  }
  [railway='rail'][tunnel='yes']{
    [zoom=9]{
      line-color: rgb(170,170,170);
      line-width: 1;
      line-dasharray: 5, 2;
    }
    [zoom>=10][zoom<13]{
      line-color: rgb(170,170,170);
      line-width: 2;
      line-dasharray: 5, 2;
    }
  }
  [railway='tram'],[railway='light_rail'],[railway='narrow_gauge'],[railway='funicular']{
    [zoom>=8][zoom<10]{
      line-color: rgb(204,204,204);
      line-width: 1;
    }
    [zoom>=10][zoom<13]{
      line-color: rgb(170,170,170);
      line-width: 1;
    }
  }
  [railway='preserved']{
    [zoom=12]{
      line-color: rgb(170,170,170);
      line-width: 1.5;
      line-join: round;
    }
    [zoom>=13]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 0, 1, 8, 1;
      }
      line-color: rgb(153,153,153);
      line-width: 3;
      line-join: round;
    }
  }
  [railway='INT-preserved-ssy']{
    [zoom=12]{
      line-color: rgb(170,170,170);
      line-width: 1;
      line-join: round;
    }
    [zoom>=13]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 0.8;
        line-join: round;
        line-dasharray: 0, 1, 8, 1;
      }
      line-color: rgb(153,153,153);
      line-width: 2;
      line-join: round;
    }
  }
  [railway='monorail']{
    [zoom>=14]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-opacity: 0.4;
        line-join: round;
        line-cap: round;
      }
      line-color: rgb(119,119,119);
      line-width: 3;
      line-join: round;
      line-cap: round;
      line-dasharray: 2, 3;
    }
  }
}
#waterway-bridges{
  [zoom>=14][zoom<17]{
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
  [zoom>=17]{
    ::dash{
      line-color: rgb(0,0,0);
      line-width: 11;
      line-join: round;
    }
    line-color: @water;
    line-width: 10;
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
.access{ 
  [access='permissive'][highway='unclassified'],[access='permissive'][highway='residential'],[access='permissive'][highway='footway']{
    [zoom=16]{
      line-color: rgb(204,255,153);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='permissive'][highway='service'][service!='INT-minor']{
    [zoom=15]{
      line-color: rgb(204,255,153);
      line-width: 3;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='permissive'][highway='unclassified'],[access='permissive'][highway='residential'],[access='permissive'][highway='footway'],[access='permissive'][highway='service']{
    [zoom>=16]{
      line-color: rgb(204,255,153);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='destination'][highway='unclassified'],[access='destination'][highway='residential']{
    [zoom=15]{
      line-color: rgb(194,224,255);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='destination'][highway='service'][service!='INT-minor']{
    [zoom=15]{
      line-color: rgb(194,224,255);
      line-width: 3;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;    
    }
  }
  [access='destination'][highway='unclassified'],[access='destination'][highway='residential'],[access='destination'][highway='service']{
    [zoom>=16]{
      line-color: rgb(194,224,255);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='private'][highway!='service'],[access='no'][highway!='service']{
    [zoom=15]{
      line-color: rgb(239,169,169);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;     
    }
  }
  [access='private'][highway='service'][service!='INT-minor'],[access='no'][highway='service'][service!='INT-minor']{
    [zoom=15]{
      line-color: rgb(239,169,169);
      line-width: 3;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8; 
    }
  }
  [access='private'],[access='no']{
    [zoom>=16]{
      line-color: rgb(239,169,169);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;  
    }
  }
}
.directions{
  [oneway='yes']{
    [zoom>=16]{
      ::line{
        line-color: @direaction;
        line-width: 1;
        line-join: bevel;
        line-dasharray: 0, 12,10, 152;
      }
      ::line1{
        line-color: @direaction;
        line-width: 2;
        line-join: bevel;
        line-dasharray: 0, 12,9, 153;
      }
      ::arrow{
        line-color: @direaction;
        line-width: 3;
        line-join: bevel;
        line-dasharray: 0, 18,2, 154;
      }
      ::arrow1{
        line-color: @direaction;
        line-width: 4;
        line-join: bevel;
        line-dasharray: 0, 18,1, 155;
      }
    }
  }
  [oneway='-1']{
    [zoom>=16]{
      ::line{
        line-color: @direaction;
        line-width: 1;
        line-join: bevel;
        line-dasharray: 0, 12,10, 152;
      }
      ::line1{
        line-color: @direaction;
        line-width: 2;
        line-join: bevel;
        line-dasharray: 0, 12,9, 153;
      }
      ::arrow{
        line-color: @direaction;
        line-width: 3;
        line-join: bevel;
        line-dasharray: 0, 18,2, 154;
      }
      ::arrow1{
        line-color: @direaction;
        line-width: 4;
        line-join: bevel;
        line-dasharray: 0, 18,1, 155;
      }
    }
  }
}
.bridges_casing{
  [highway='motorway'],[highway='motorway_link']{
    [zoom=12]{
      ::case{
        line-color: @roadCase;
        line-width: 3;
      }
    }
    [zoom>=13][zoom<15]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 6.5;
      }
   }
    [zoom>=15][zoom<17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 10; 
      }
    }
    [zoom>=17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 12;
      }
    }
  }
  [highway='trunk'],[highway='trunk_link']{
    [zoom=12]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 4;
      }
    }
    [zoom>=13][zoom<15]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 7.5;
      }
    }
    [zoom>=15][zoom<17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 11.5; 
      }
    }
    [zoom>=17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 16; 
      }
    }
  }
  [highway='primary'],[highway='primary_link']{
    [zoom=12]{
      ::case{
        line-color: @roadCase;
        line-width: 4;
      }
    }
    [zoom>=13][zoom<15]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 7;       
      }
   }
    [zoom>=15][zoom<17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 10;
      }
    }
    [zoom>=17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 16; 
      }
    }
  }
  [highway='secondary'],[highway='secondary_link']{
    [zoom>=13][zoom<15]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 7;
      }
    }
    [zoom>=15][zoom<17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 10;
      }
    }
    [zoom>=17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 16; 
      }
    }
  }
  [highway='tertiary'],[highway='tertiary_link']{
    [zoom=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 7.5;
      }
    }
    [zoom>=15][zoom<17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 10;
      }
    }
    [zoom>=17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 16; 
      }
    }
  }
  [highway='residential'],[highway='unclassified'],[highway='road']{
    [zoom=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 3;
      }
    }
    [zoom=15]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5;      
      }
    }
    [zoom=16]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 6;
      }
    }
    [zoom>=17]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 10;
      }
    }
  }
  [highway='service']{
    [zoom=15]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 2.5;
      }
    }
    [zoom>=16]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5;
      }
    }
  }
  [highway='pedestrian']{
    [zoom>=14][zoom<16]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 2;
      }
    }
    [zoom>=16]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 6;      
      }
    }
  }
  [aeroway='runway']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 19;  
      }
    }
  }
  [aeroway='taxiway']{
    [zoom=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5;
      }
    }
    [zoom>=15]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 7;
      }
    }
  }
  [railway='subway']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5.5;
      }
    }
  }
  [railway='light_rail'],[railway='narrow_gauge']{
    [zoom>=14]{
      ::case{
        line-color: rgb(85,85,85);
        line-width: 5.5;
      }
    }
  }
  [highway='unsurfaced']{
    [zoom=13]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5;
      }
    }
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 6.5;
      }
    }
  }
  [highway='bridleway'],[highway='path'][horse='designated']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5.5;
      }
    }
  }
  [highway='footway'],[highway='path'][foot='designated']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 6;
      }
    }
  }
  [highway='path'][bicycle!='designated'][foot!='designated'][horse!='designated']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 4; 
      }
    }
  }
  [highway='cycleway'],[highway='path'][bicycle='designated']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5.5;
      }
    }
  }
  [highway='byway']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5.5;      
      }
    }
  }
  [railway='rail']{
    [zoom>=13]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5.5;   
        line-join: round;   
      }
    }    
  }
  [railway='INT-spur-siding-yard']{
    [zoom>=13]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5.7;
        line-join: round;
      }
    }
  }
  [railway='disused'][highway=''],[railway='abandoned'][highway=''],[railway='construction'][highway='']{
    [zoom>=13]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 6;
      }
    }
  }
  [highway='track'][tracktype='grade1']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 5;
      }
    }
  }
  [highway='track'][tracktype='grade2']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='grade3']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='grade4']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='grade5']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='']{
    [zoom>=14]{
      ::case{
        line-color: rgb(0,0,0);
        line-width: 4.5;
      }
    }
  }
}
.bridges_casing2{
  [railway='subway']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
      }
    }
  }
  [railway='light_rail'],[railway='narrow_gauge']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
      }
    }
  }
  [highway='unsurfaced']{
    [zoom=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;      
      }
    }
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 5;
        line-join: round;
        line-cap: round; 
      }
    }
  }
  [highway='bridleway'],[highway='path'][horse='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='footway'],[highway='path'][foot='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='path'][bicycle!='designated'][foot!='designated'][horse!='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='cycleway'],[highway='path'][bicycle='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='byway']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [railway='rail']{
    [zoom>=10][zoom<13]{
      ::casing{
        line-color: @railway;
        line-width: 2;
        line-join: round;
      }
    }
    [zoom>=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 5;
        line-join: round;
      }
    }
  }
  [railway='INT-spur-siding-yard']{
    [zoom>=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 5;
        line-join: round;      
      }
    }
  }
  [highway=''][railway='disused'],[highway=''][railway='abandoned'],[railway='construction'][highway='']{
    [zoom>=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4.5;
        line-join: round;    
        line-cap: round;  
      }
    }
  }
  [highway='track'][tracktype='grade1']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
      }
    }
  }
  [highway='track'][tracktype='grade2']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='grade3']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='grade4']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='grade5']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
}
.bridges_fill{
  [highway='motorway'],[highway='motorway_link']{
    [zoom=12]{
      ::fill{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @road;
        line-width: 5.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15][zoom<17]{
      ::fill{
        line-color: @road;
        line-width: 7.5;
        line-join: round;
        line-cap: round;      
      }
    }
    [zoom>=17]{
      ::fill{
        line-color: @road;
        line-width: 10;
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='trunk'],[highway='trunk_link']{
    [zoom=12]{
      ::fill{
        line-color: @primaryroad;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @primaryroad;
        line-width: 6;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15][zoom<17]{
      ::fill{
        line-color: @primaryroad;
        line-width: 10;
        line-join: round;
        line-cap: round;      
      }
    }
    [zoom>=17]{
      ::fill{
        line-color: @primaryroad;
        line-width: 14;
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='primary'],[highway='primary_link']{
    [zoom=12]{
      ::fill{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @road;
        line-width: 5.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15][zoom<17]{
      ::fill{
        line-color: @road;
        line-width: 8;
        line-join: round;
        line-cap: round;      
      }
    }
    [zoom>=17]{
      ::fill{
        line-color: @road;
        line-width: 14;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='secondary'],[highway='secondary_link']{
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @road;
        line-width: 5.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15][zoom<17]{
      ::fill{
        line-color: @road;
        line-width: 8;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=17]{
      ::fill{
        line-color: @road;
        line-width: 14;
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='tertiary'],[highway='tertiary_link']{
    [zoom=14]{
      ::fill{
        line-color: @road;
        line-width: 6;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15][zoom<17]{
      ::fill{
        line-color: @road;
        line-width: 8;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=17]{
      ::fill{
        line-color: @road;
        line-width: 14;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='road']{
    [zoom=14]{
      ::fill{
        line-color: @road;
        line-width: 3.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15][zoom<17]{
      ::fill{
        line-color: @road;
        line-width: 9.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=17]{
      ::fill{
        line-color: @road;
        line-width: 14;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='residential'],[highway='unclassified']{
    [zoom=14]{
      ::fill{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;    
      }
    }
    [zoom=15]{
      ::fill{
        line-color: @road;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom=16]{
      ::fill{
        line-color: @road;
        line-width: 4;
        line-join: round;
        line-cap: round;    
      }
    }
    [zoom>=17]{
      ::fill{
       line-color: @road;
        line-width: 8;
        line-join: round;
        line-cap: round;    
      }
    }
  }
  [highway='service']{
    [zoom>=15]{
      ::fill{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;       
      }
    }
    [zoom>=16]{
      ::fill{
        line-color: @road;
        line-width: 4;
        line-join: round;
        line-cap: round;       
      }
    }
  }
  [highway='pedestrian']{
    [zoom>=16]{
      ::fill{
        line-color: @road;
        line-width: 4.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [aeroway='runway']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(187,187,204);
        line-width: 4;
      }
    }
  }
  [aeroway='taxiway']{
    [zoom=14]{
      ::fill{
        line-color: rgb(187,187,204);
        line-width: 4;      
      }
    }
    [zoom>=15]{
      ::fill{
        line-color: rgb(187,187,204);
        line-width: 6;      
      }
    }
  }
  [aeroway='runway']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 2;
      }
    }
  }
  [railway='light_rail'],[railway='narrow_gauge']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(102,102,102);
        line-width: 2;
      }
    }
  }
  [highway='unsurfaced']{
    [zoom=13]{
      ::fill{
        line-color: rgb(222,189,156);
        line-width: 3;
        line-join: round;
        line-cap: round;
        line-dasharray: 2, 4;
      }
    }
    [zoom>=14]{
      ::fill{
        line-color: rgb(222,189,156);
        line-width: 4;
        line-join: round;
        line-cap: round;
        line-dasharray: 4, 6;      
      }
    }
  }
  [highway='bridleway'],[highway='path'][horse='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(0,128,0);
        line-width: 3;
        line-dasharray: 2, 4;      
      }
    }
  }
  [highway='footway'],[highway='path'][foot='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(250,128,114);
        line-width: 2;
        line-dasharray: 1, 3;      
        line-join: round;
        line-cap: round;
      }
    }    
  }
  [highway='path'][bicycle!='designated'][foot!='designated'][horse!='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(0,0,0);
        line-width: 0.5;
        line-dasharray: 6, 3;      
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='cycleway'],[highway='path'][bicycle='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(0,0,255);
        line-width: 1.5;
        line-dasharray: 1, 3;      
        line-join: round;
        line-cap: round;        
      }
    }
  }
  [highway='byway']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(255,204,0);
        line-width: 1.5;
        line-join: round;
        line-join: round;
        line-dasharray: 3, 4;
      }
    }
  }
  [railway='rail']{
    [zoom>=13][zoom<14]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 8, 12;
      }
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 3;
        line-join: round;
      }
    }
    [zoom>=14]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 0, 11, 8, 1;
      }
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 3;
        line-join: round;
      }
    }
  }
  [railway='INT-spur-siding-yard']{
    [zoom>=13]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 0.8;
        line-join: round;
        line-dasharray: 0, 11, 8, 1;
      }
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 2;
        line-join: round;
      }
    }
  }
  [railway='disused'][highway=''],[railway='abandoned'][highway=''],[railway='construction'][highway='']{
    [zoom>=13]{
      ::fill{
        line-color: rgb(128,128,128);
        line-width: 2;
        line-join: round;
        line-dasharray: 2, 4;
      }
    }
  }
  [highway='track'][tracktype='grade1']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(179,119,0);
        line-width: 2;
        line-opacity: 0.7
      }
    }    
  }
  [highway='track'][tracktype='grade2']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(168,112,0);
        line-width: 1.5;
        line-opacity: 0.8;
        line-join: round;
        line-cap: round;
        line-dasharray: 3, 4;
      }
    }    
  }
  [highway='track'][tracktype='grade3']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 2;
        line-opacity: 0.7;
        line-join: round;
        line-cap: round;
      }
    }    
  }
  [highway='track'][tracktype='grade4']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 2;
        line-opacity: 0.8;
        line-join: round;
        line-cap: round;
        line-dasharray: 4, 7, 1, 5;
      }
    }    
  }
  [highway='track'][tracktype='grade5']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 2;
        line-opacity: 0.8;
        line-join: round;
        line-cap: round;
        line-dasharray: 1, 5;
      }
    }    
  }
  [highway='track'][tracktype='']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 1.5;
        line-join: round;
        line-cap: round;
        line-dasharray: 3, 4;
      }
    }    
  }
}