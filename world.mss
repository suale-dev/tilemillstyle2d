Map {
  background-color: #b8dee6;
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
@landcover-swimmingpoll-fill: rgb(181,208,208);
@landcover-swimmingpoll-line: rgb(0,0,255);
@landcover-playground-fill: rgb(204,255,241);
@landcover-playground-line: rgb(102,102,102);
#landcover-leisure{
  [leisure='swimming_pool'][zoom >=14]{
    polygon-fill: rgb(181,208,208);
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
#landcover-line{
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
      polygon-fill: rgb(255,0,255);
    }
  }
  [landuse='basin'][zoom>=7]{
    polygon-gamma: 0.75;
    polygon-fill: rgb(255,0,255);
  }
  [natural='lake'],[natural='water'],[landuse='reservoir'],[waterway='riverbank'],[landuse='water'],[natural='bay']{
    [zoom>=6]{
      polygon-gamma: 0.75;
      polygon-fill: rgb(255,0,255);
    }
  }
  [natural='mud'][zoom>=13]{
    polygon-pattern-file: url("symbols/mud.png");
  }
  [natural='land'][zoom>=10]{
    polygon-fill: rgb(242,239,233);
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
      line-color: rgb(181,208,208);
      line-width: 0.7;
    }
    [zoom=9]{
      line-color: rgb(181,208,208);
      line-width: 1.2;
    }
    [zoom>=10][zoom<12]{
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
      line-width: 1;
      line-join: round;
      line-cap: round;
      line-dasharray: 4, 4;
    }
    [zoom>=16]{
      line-color: rgb(181,208,208);
      line-width: 2;
      line-join: round;
      line-cap: round;
      line-dasharray: 4, 4;
    }
  }
  [waterway='river']{
    [zoom=12]{
      line-color: rgb(181,208,208);
      line-width: 2;
      line-join: round;
      line-cap: round;
    }
    [zoom=13]{
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
      line-width: 3;
      line-join: round;
      line-cap: round;
    }
    [zoom=13]{
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
      line-width: 1;
    }
  }
  [waterway='river'][tunnel='yes']{
    [zoom=14]{
      ::dash{
        line-color: rgb(181,208,208);
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
        line-color: rgb(181,208,208);
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
        line-color: rgb(181,208,208);
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
        line-color: rgb(181,208,208);
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
        line-color: rgb(181,208,208);
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
        line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
        line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
        line-color: rgb(181,208,208);
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
      line-color: rgb(181,208,208);
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
  [waterway='lock_gate'][zoom=17]{
    point-file: url("symbols/lock_gate.png");
  }
}
#tunnels{
  ::casing{
    [highway='motorway'],[highway='motorway_link']{
      [zoom=12]{
        line-color: rgb(80,96,119);
        line-width: 3;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(80,96,119);
        line-width: 6.5;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(80,96,119);
        line-width: 10;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: rgb(80,96,119);
        line-width: 13;
        line-dasharray: 4, 2;
      }
    }
    [highway='trunk'],[highway='trunk_link']{
      [zoom=12]{
        line-color: rgb(71,113,71);
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(71,113,71);
        line-width: 8;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(71,113,71);
        line-width: 11;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: rgb(71,113,71);
        line-width: 14;
        line-dasharray: 4, 2;
      }
    }
    [highway='primary'],[highway='primary_link']{
      [zoom=12]{
        line-color: rgb(141,67,70);
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(141,67,70);
        line-width: 8;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(141,67,70);
        line-width: 11;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: rgb(141,67,70);
        line-width: 14;
        line-dasharray: 4, 2;
      }
    }
    [highway='secondary'],[highway='secondary_link']{
      [zoom=12]{
        line-color: rgb(163,123,72);
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(163,123,72);
        line-width: 10;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(163,123,72);
        line-width: 12;
        line-dasharray: 4, 2;
      }
      [zoom>=17]{
        line-color: rgb(163,123,72);
        line-width: 17;
        line-dasharray: 4, 2;
      }
    }
    [highway='tertiary'],[highway='tertiary_link']{
      [zoom=13]{
        line-color: rgb(153,153,153);
        line-width: 6;
        line-dasharray: 4, 2;
      }
      [zoom=14]{
        line-color: rgb(153,153,153);
        line-width: 7.5;
        line-dasharray: 4, 2;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(153,153,153);
        line-width: 11;
        line-dasharray: 4, 2;       
      }
    }
    [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: rgb(153,153,153);
        line-width: 3;
        line-dasharray: 4, 2;
      }
      [zoom=14]{
        line-color: rgb(153,153,153);
        line-width: 4.5;
        line-dasharray: 4, 2;
      }
      [zoom=15]{
        line-color: rgb(153,153,153);
        line-width: 8;
        line-dasharray: 4, 2;
      }
      [zoom=16]{
        line-color: rgb(153,153,153);
        line-width: 11;
        line-dasharray: 4, 2;
      }
    }
    [highway='tertiary'],[highway='tertiary_link'],[highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom>=17]{
        line-color: rgb(153,153,153);
        line-width: 16;
        line-dasharray: 4, 2;
      }
    }
  }
  ::fill{
    [highway='motorway'],[highway='motorway_link']{
      [zoom=12]{
        line-color: rgb(214,223,234);
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(214,223,234);
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(214,223,234);
        line-width: 8.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: rgb(214,223,234);
        line-width: 11;
        line-join: round;
        line-cap: round;
      }
    }
    [highway='trunk'],[highway='trunk_link']{
      [zoom=12]{
        line-color: rgb(205,234,205);
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(205,234,205);
        line-width: 6.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(205,234,205);
        line-width: 9;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: rgb(205,234,205);
        line-width: 12;
        line-join: round;
        line-cap: round;
      }      
    }
    [highway='primary'],[highway='primary_link']{
      [zoom=12]{
        line-color: rgb(244,195,196);
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(244,195,196);
        line-width: 6.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(244,195,196);
        line-width: 9;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: rgb(244,195,196);
        line-width: 12;
        line-join: round;
        line-cap: round;
      }      
    }
    [highway='secondary'],[highway='secondary_link']{
      [zoom=12]{
        line-color: rgb(254,224,184);
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: rgb(254,224,184);
        line-width: 8;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(254,224,184);
        line-width: 10;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: rgb(254,224,184);
        line-width: 14;
        line-join: round;
        line-cap: round;
      }      
    }
    [highway='tertiary'],[highway='tertiary_link']{
      [zoom=13]{
        line-color: rgb(255,255,204);
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
      [zoom=14]{
        line-color: rgb(255,255,204);
        line-width: 6.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15][zoom<17]{
        line-color: rgb(255,255,204);
        line-width: 9.4;
        line-join: round;
        line-cap: round;
      }
      [zoom>=17]{
        line-color: rgb(255,255,204);
        line-width: 13;
        line-join: round;
        line-cap: round;
      }
    }
   [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: rgb(255,255,255);
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom=14]{
        line-color: rgb(255,255,255);
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
      [zoom=15]{
        line-color: rgb(255,255,255);
        line-width: 6.5;
        line-join: round;
        line-cap: round;        
      }
      [zoom=16]{
        line-color: rgb(255,255,255);
        line-width: 9.4;
        line-join: round;
        line-cap: round;        
      }
      [zoom>=17]{
        line-color: rgb(255,255,255);
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
      line-color: rgb(68,68,68);
      line-width: 0.4;
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
      line-color: rgb(80,96,119);
      line-width: 3;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: rgb(80,96,119);
      line-width: 6.5;
      line-join: round;
    }
    [zoom>=15][zoom<17]{
      line-color: rgb(80,96,119);
      line-width: 10;
      line-join: round;      
    }
    [zoom>=17]{
      line-color: rgb(80,96,119);
      line-width: 13;
      line-join: round;      
    }
  }
  [highway='trunk'][tunnel!='yes']{
    [zoom=12]{
      line-color: rgb(71,113,71);
      line-width: 3;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: rgb(71,113,71);
      line-width: 7.5;
      line-join: round;
    }
    [zoom>=15][zoom<17]{
      line-color: rgb(71,113,71);
      line-width: 11.5;
      line-join: round;      
    }
    [zoom>=17]{
      line-color: rgb(71,113,71);
      line-width: 16;
      line-join: round;      
    }
  }
  [highway='primary'][tunnel!='yes']{
    [zoom=12]{
      line-color: rgb(141,67,70);
      line-width: 3;
      line-join: round;      
    }
    [zoom>=13][zoom<15]{
      line-color: rgb(141,67,70);
      line-width: 7.5;
      line-join: round;
    }
    [zoom>=15][zoom<17]{
      line-color: rgb(141,67,70);
      line-width: 11.5;
      line-join: round;      
    }
    [zoom>=17]{
      line-color: rgb(141,67,70);
      line-width: 16;
      line-join: round;      
    }
  }
  [highway='secondary'][tunnel!='yes']{
    [zoom=12]{
      line-color: rgb(163,123,72);
      line-width: 2.5;
      line-join: round;   
      line-cap: round;       
    }
    [zoom>=13][zoom<15]{
      line-color: rgb(163,123,72);
      line-width: 8.5;
      line-join: round;
      line-cap: round;
    }
    [zoom>=15][zoom<17]{
      line-color: rgb(163,123,72);
      line-width: 11.5;
      line-join: round; 
      line-cap: round;     
    }
    [zoom>=17]{
      line-color: rgb(163,123,72);
      line-width: 16;
      line-join: round;   
      line-cap: round;    
    }
  }
  [highway='tertiary'][tunnel!='yes']{
    [zoom=13]{
      line-color: rgb(187,187,187);
      line-width: 6;
      line-join: round;
      line-cap: round;
    }
    [zoom=14]{
      line-color: rgb(187,187,187);
      line-width: 7.5;
      line-join: round;
      line-cap: round;      
    }
    [zoom>=15][zoom<17]{
      line-color: rgb(187,187,187);
      line-width: 11;
      line-join: round;
      line-cap: round;       
    }
  }
  [tunnel!='yes']{
    [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: rgb(153,153,153);
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
      [zoom=14]{
        line-color: rgb(153,153,153);
        line-width: 4.5;
        line-join: round;
        line-cap: round;      
      }
      [zoom=15]{
        line-color: rgb(187,187,187);
        line-width: 8;
        line-join: round;
        line-cap: round;         
      }
      [zoom=16]{
        line-color: rgb(187,187,187);
        line-width: 11;
        line-join: round;
        line-cap: round;         
      }
      [zoom>=17]{
        line-color: rgb(187,187,187);
        line-width: 16;
        line-join: round;
        line-cap: round;         
      }
    }
  }
  [highway='service'][service!='INT-minor'][tunnel!='yes']{
    [zoom>=14][zoom<16]{
      line-color: rgb(153,153,153);
      line-width: 2.5;
      line-join: round;
      line-cap: round;
    }
    [zoom>=16]{
      line-color: rgb(153,153,153);
      line-width: 7;
      line-join: round;
      line-cap: round;
    }
  }
  [highway='service'][tunnel='yes']{
    [zoom>=14][zoom<16]{
      line-color: rgb(153,153,153);
      line-color: 2.5;
      line-dasharray: 4, 2;
    }
    [zoom>=16]{
      line-color: rgb(153,153,153);
      line-color: 7;
      line-dasharray: 4, 2;
    }
  }
  [highway='service'][service='INT-minor']{
    [zoom>=16]{
      line-color: rgb(153,153,153);
      line-color: 4;
      line-join: round;
      line-cap: round;     
    }
  }
  [highway='pedestrian'][tunnel!='yes']{
    [zoom=13]{
      line-color: rgb(128,128,128);
      line-width: 2;
      line-join: round;
      line-cap: round; 
    }
    [zoom=14]{
      line-color: rgb(128,128,128);
      line-width: 3.6;
      line-join: round;
      line-cap: round;       
    }
    [zoom=15]{
      line-color: rgb(128,128,128);
      line-width: 6.5;
      line-join: round;
      line-cap: round;         
    }
    [zoom>=16]{
      line-color: rgb(128,128,128);
      line-width: 9;
      line-join: round;
      line-cap: round;        
    }
  }
  [highway='pedestrian'][tunnel='yes']{
    [zoom=13]{
      line-color: rgb(128,128,128);
      line-width: 2;
      line-dasharray: 4, 2;
    }
    [zoom=14]{
      line-color: rgb(128,128,128);
      line-width: 3.6;
      line-dasharray: 4, 2;
    }
    [zoom=15]{
      line-color: rgb(128,128,128);
      line-width: 6.5;
      line-dasharray: 4, 2;
    }
    [zoom>=16]{
      line-color: rgb(128,128,128);
      line-width: 9;
      line-dasharray: 4, 2;        
    }
  }
  [highway='living_street']{
    [zoom>=12][zoom<14]{
      line-color: rgb(255,255,255);
      line-width: 2.5;
      line-join: round;
      line-cap: round;
    }
    [zoom=14]{
      line-color: rgb(255,255,255);
      line-width: 4;
      line-join: round;
      line-cap: round;
    }
    [zoom=15]{
      line-color: rgb(255,255,255);
      line-width: 6;
      line-join: round;
      line-cap: round;
    }
    [zoom=16]{
      line-color: rgb(255,255,255);
      line-width: 9;
      line-join: round;
      line-cap: round;      
    }
    [zoom>=17]{
      line-color: rgb(255,255,255);
      line-width: 14.5;
      line-join: round;
      line-cap: round;      
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
  line-color: rgb(255,255,255);
  line-width: 3;
  line-opacity: 0.4;
  line-join: round;
  line-cap: round;
  ::dash{
    line-color: rgb(153,102,0);
    line-width: 1.5;
    line-join: round;
    line-cap: round;
    line-dasharray: 3,4;
  }
}