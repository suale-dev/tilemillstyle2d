#builtup
{
  [zoom >=8][zoom<11]{
    polygon-fill: rgb(221,221,221);
  }
}
#landcover-leisure{
  [leisure='swimming_pool'][zoom >=14]{
    polygon-fill: @water;
    line-color: rgb(0,0,255);
    line-width: 0.5;
  }
  [leisure='playground'][zoom >= 13][zoom<17]{
    polygon-fill: @grassColor ;
    line-color: rgb(102,102,102);
    line-width: 0.3;
  }
}

#landcover-tourism{
  [tourism='camp_site'],[tourism='caravan_site'],[tourism='picnic_site']{
    [zoom >=13][zoom<17]{
      polygon-fill: rgb(204,255,153);
      polygon-opacity: 0.5;
      line-color: rgb(102,102,102);
      line-width: 0.3;
    }
    [zoom >=17]{
      polygon-fill: rgb(204,255,153);
      polygon-opacity: 0.5;
      line-color: rgb(102,102,102);
      line-width: 0.3;
    }
  }
  [tourism='attraction'][zoom>=10][zoom<17]{
    polygon-fill: rgb(242,202,234);
  }
  /*3d style*/
  [tourism='attraction'][zoom>=17]{
    polygon-fill: rgb(242,202,234);
  }
  
  
  [tourism='zoo'][zoom>=10][zoom<17]{
    polygon-pattern-file: url("symbols/zoo.png");
  }
  /*3d style*/
  [tourism='zoo'][zoom>=17]{
    polygon-pattern-file: url("symbols/zoo.png");
  }
}

#landcover-landuse{
  [landuse='quarry'][zoom>=11][zoom<17]{
    polygon-pattern-file: url("symbols/quarry2.png");
    line-color: rgb(128,128,128);
    line-width: 0.5;
  }
   /*3d style*/
  [landuse='quarry'][zoom>=17]{
    polygon-pattern-file: url("symbols/quarry2.png");
    line-color: rgb(128,128,128);
    line-width: 0.5;
  } 
  
  [landuse='vineyard'][zoom<13][zoom>=10]{
    polygon-fill: rgb(171,223,150);
  }
 
  [landuse='orchard'][zoom>=10][zoom<17]{
    /*polygon-pattern-file: url("symbols/orchard.png");*/
    polygon-fill:@grassColor;
  }
  /*3d style*/
  [landuse='orchard'][zoom>=17]{
    /*polygon-pattern-file: url("symbols/orchard.png");*/
    polygon-fill:@grassColor;
  }
  
  
  [landuse='vineyard'][zoom>=13][zoom<17]{
    polygon-pattern-file: url("symbols/vineyard.png");
  }
   /*3d style*/
   [landuse='vineyard'][zoom>=17]{
    polygon-pattern-file: url("symbols/vineyard.png");
  }
  
  
  [landuse='cemetery'],[landuse='grave_yard'],[amenity='grave_yard']{
    [zoom<15][zoom>=10]{
      polygon-fill:@grassColor;
    }
  }
  
  [landuse='residential'][zoom>=10][zoom<17]{
    polygon-fill: @grassColor;
  }
  /*3d style
  [landuse='residential'][zoom>=17]{
    polygon-fill: @grassColor;
  }*/
  
  
  [landuse='garages'][zoom>=12][zoom<17]{
    polygon-fill: rgb(153,153,102);
    polygon-opacity: 0.2;
  }
   /*3d style*/
   [landuse='garages'][zoom>=17]{
    polygon-fill: rgb(153,153,102);
    polygon-opacity: 0.2;
  }
  
  
  [landuse='field'],[natural='field']{
    [zoom <14][zoom >=10]{
      polygon-fill: rgb(102,102,0);
      polygon-opacity: 0.2;
    }
    [zoom>=14][zoom<17]{
      polygon-fill: rgb(102,102,0);
      polygon-opacity: 0.2;
      line-color: rgb(102,102,0);
      line-width: 0.3;
      line-opacity: 0.4;
    }
     /*3d style*/
    [zoom>=17]{
      polygon-fill: rgb(102,102,0);
      polygon-opacity: 0.2;
      line-color: rgb(102,102,0);
      line-width: 0.3;
      line-opacity: 0.4;
    }
  }
  [landuse='meadow'],[landuse='grass']{
    [zoom>=10]{
      polygon-fill: @grassColor;
    }
    /*3d style*/
    [zoom>=17]{
      polygon-fill: @grassColor;
    }
  }
  [leisure='park'],[leisure='recreation_ground']{
    [zoom>=10][zoom<17]{
      polygon-fill: @grassColor;
    }
    /*3d style*/
    [zoom>=17]{
      polygon-fill:@grassColor;
    }
  }
  
  [leisure='common'][zoom>=10][zoom<17]{
    polygon-fill: @grassColor;
  }
    /*3d style*/
  [leisure='common'][zoom>=17]{
    polygon-fill: @grassColor;
  }
  
  [leisure='garden'][zoom>=10][zoom<17]{
    polygon-fill: rgb(207,236,168);
  }
   /*3d style*/
  [leisure='garden'][zoom>=17]{
    polygon-fill: rgb(207,236,168);
  }
  
  [leisure='golf_course'][zoom>=10][zoom<17]{
    polygon-fill: @grassColor;
  }
  /*3d style*/
  [leisure='golf_course'][zoom>=17]{
    polygon-fill:  @grassColor;
  }
  
  [landuse='allotments']{
    [zoom>=10][zoom<14]{
      polygon-fill: rgb(229,199,171);
    }
    [zoom>=14][zoom<17]{
      polygon-pattern-file: url("symbols/allotments.png");
    }
    /*3d style*/
    [zoom>=17]{
      polygon-pattern-file: url("symbols/allotments.png");
    }
  }
  [landuse='forest']{
    [zoom>=8][zoom<14]{
      polygon-fill: @grassColor;
    }
    [zoom>=14][zoom<17]{
      /*polygon-pattern-file: url("symbols/forest.png");*/
 	polygon-fill:@grassColor;
    }
    /*3d style*/
    [zoom>=17]{
      /*polygon-pattern-file: url("symbols/forest.png");*/
       polygon-fill: @grassColor;	
    }
  }
  
  /*3d style*/
  [landuse='farmyard'][zoom>=17]{
	polygon-fill: rgb(221,191,146);
  }
  [landuse='farmyard'][zoom>=9][zoom<17]{
	polygon-fill: rgb(221,191,146);
  }
  
  [landuse='farm'],[landuse='farmland'][zoom>=9][zoom<17]{
    polygon-fill: @grassColor;
  }
  /*3d style*/
  [landuse='farm'],[landuse='farmland'][zoom>=17]{
    polygon-fill: @grassColor;
  }
  
  
  [landuse='recreation_ground'],[landuse='conservation']{
    [zoom>=10][zoom<17]{
      polygon-fill: @grassColor;
    }
    /*3d style*/
     [zoom>=17]{
      polygon-fill: @grassColor;
    }
  }
  
  [landuse='village_green'][zoom>=11][zoom<17]{
    polygon-fill:rgb(207,236,168);
  }
  /*3d style*/
  [landuse='village_green'][zoom>=17]{
    polygon-fill:rgb(207,236,168);
  }
  
  [landuse='retail']{
   /* [zoom>=10]{
      polygon-fill: rgb(241,218,218);
    }
    [zoom>=15][zoom<17]{
      line-color: rgb(255,0,0);
      line-width: 0.3
    }
    3d style
    [zoom>=17]{
      line-color: rgb(255,0,0);
      line-width: 0.3
    }*/
  }
  [landuse='industrial'],[landuse='railway']{
    /* [zoom>=10][zoom<17]{
      polygon-fill: rgb(223,209,214);
    }
    3d style
    [zoom>=17]{
      polygon-fill: rgb(223,209,214);
    }*/
  }
  
  [landuse='commercial'][zoom>=10][zoom<17]{
    /*polygon-fill: rgb(239,200,200);*/
  }
   /*3d style*/
  [landuse='commercial'][zoom>=17]{

  }
  
  [landuse='brownfield'],[landuse='landfill'],[landuse='greenfield'],[landuse='construction']{
    [zoom>=10][zoom<17]{
      polygon-fill: @grassColor;
     
    }
    /*3d style
    [zoom>=17]{

    }*/
  }
  [landuse='cemetery'][religion='jewish'],[landuse='grave_yard'][religion='jewish']{
    [zoom>=14][zoom<17]{
      /*polygon-pattern-file: url("symbols/cemetery_jewish.18.png");*/
        polygon-fill:@grassColor;
    }
    /*3d style
    [zoom>=17]{

    }*/
  }
  [landuse='cemetery'][religion='christian'],[landuse='grave_yard'][religion='christian']{
    [zoom>=14]{
     /* polygon-pattern-file: url("symbols/grave_yard.png");*/
      polygon-fill:@grassColor;
    }
    /*3d style
    [zoom>=17]{
      polygon-pattern-file: url("symbols/grave_yard.png");
    }*/
  }
  [landuse='cemetery'][religion='INT-generic'],[landuse='grave_yard'][religion='INT-generic']{
    [zoom>=14]{
     /* polygon-pattern-file: url("symbols/grave_yard_generic.png");*/
       polygon-fill:@grassColor;
    }
    /*3d style
    [zoom>=17]{
      polygon-pattern-file: url("symbols/grave_yard_generic.png");
    }*/
  }
}
#landcover-natural{
  [natural='desert'][zoom>=8][zoom<17]{
    polygon-fill:rgb(227,181,122);
  }
  /*3d style*/
  [natural='desert'][zoom>=17]{
    polygon-fill:rgb(227,181,122);
  }
  
  [natural='sand'][zoom>=10][zoom<17]{
    polygon-fill:rgb(255,223,136);
  }
  /*3d style*/
  [natural='sand'][zoom>=17]{
    polygon-fill:rgb(255,223,136);
  }
  
  [natural='heath'][zoom>=10][zoom<17]{
    polygon-fill:rgb(214,217,159);
  }
  /*3d style*/
  [natural='heath'][zoom>=17][zoom<17]{
    polygon-fill:rgb(214,217,159);
  }
  
  [natural='grassland'][zoom>=10]{
    polygon-fill:@grassColor;
  }
  /*3d style*/
  [natural='grassland'][zoom>=17]{
    polygon-fill:@grassColor;
  }
  
  [natural='scrub']{
    [zoom>=10][zoom<14]{
      polygon-fill:rgb(181,227,181);
    }
    [zoom>=14][zoom<17]{
      polygon-pattern-file: url("symbols/scrub.png");
    }
     /*3d style*/
    [zoom>=17]{
     /* polygon-pattern-file: url("symbols/scrub.png");*/
      polygon-fill:@grassColor;
    }
  }
  
  [natural='beach'][zoom>=13][zoom<17]{
   /* polygon-pattern-file: url("symbols/beach.png");*/
    polygon-fill:#fff1ba;
  }
  /*3d style*/
  [natural='beach'][zoom>=17]{
   /* polygon-pattern-file: url("symbols/beach.png");*/
    polygon-fill:#fff1ba;
  }
}
#landcover-amenity{
  [amenity='university'],[amenity='college'],[amenity='school'],[amenity='hospital'],[amenity='kindergarten']{
    [zoom>=10][zoom<17]{
      polygon-fill: rgb(240,240,216);
    }
    [zoom>=12][zoom<17]{
      line-color: rgb(165,42,42);
      line-width: 0.3;
    }
    /*3d style*/
    [zoom>=17]{
      line-color: rgb(165,42,42);
      line-width: 0.3;
    }
  }
  [amenity='parking']{
    [zoom>=10]{
      polygon-fill: rgb(247,239,183);
    }
    [zoom>=15][zoom<17]{
      line-color: rgb(238,238,209);
      line-width: 0.3;
    }
    /*3d style*/
    [zoom>=17]{
      line-color: rgb(238,238,209);
      line-width: 0.3;
    }
  }
  [amenity='prison'][zoom>=14][zoom<17]{
    polygon-pattern-file: url("symbols/amenity_prison.png");
    line-color: rgb(85,85,85);
    line-width: 0.3;
  }
  [amenity='prison'][zoom>=17]{
    polygon-pattern-file: url("symbols/amenity_prison.png");
    line-color: rgb(85,85,85);
    line-width: 0.3;
  }
    
}
#landcover{
  /*[military='barracks'][zoom>=10][zoom<17]{
    polygon-fill: rgb(255,143,143);
  }
  [military='danger_area']{
    [zoom<11][zoom>=9]{
      polygon-fill: rgb(255,192,203);
      polygon-opacity: 0.3;
    }
    [zoom>=11][zoom<17]{
      polygon-pattern-file: url("symbols/danger.png");
    }
    3d style 
    [zoom>=17]{
    
    }
  }*/

  [power='station'],[power='generator']{
    [zoom>=10][zoom<12]{
      polygon-fill: rgb(187,187,187);
    }
    [zoom>=12][zoom<17]{
      polygon-fill: rgb(187,187,187);
      line-color: rgb(85,85,85);
      line-width: 0.4;
    }
    [zoom>=17]{

    }
  }
  [power='sub_station'][zoom>=13][zoom<17]{
    polygon-fill: rgb(187,187,187);
    line-color: rgb(85,85,85);
    line-width: 0.4;
  }
  /*3d style*/
  [power='sub_station'][zoom>=17]{

  }

  [aeroway='apron'][zoom>=12][zoom<17]{
    polygon-fill: rgb(233,209,255);
  }
  /*3d style*/
  [aeroway='apron'][zoom>=17]{
    polygon-fill: #b4b4b4;
  }
  
  [aeroway='aerodrome'][zoom>=12][zoom<17]{
    polygon-fill: rgb(204,204,204);
    polygon-opacity: 0.2;
    line-color: rgb(85,85,85);
    line-width: 0.2;
  }
  /*3d style*/
  [aeroway='aerodrome'][zoom>=17]{

  }
  
  [highway='services'],[highway='rest_area']{
    [zoom>=14][zoom<17]{
      polygon-fill: rgb(239,200,200);
    }
    [zoom>=17]{
      polygon-fill: @3d-minor-road-fill;
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
  /*3d style*/
  [zoom>=16]{

  }
}
#sports_grounds{
  [leisure='sports_centre']{
    [zoom>=10][zoom<17]{
    }
  }
  [leisure='stadium']{
    [zoom>=10]{
      polygon-fill: @grassColor;
 
    }
  }
  [leisure='track'][zoom>=10][zoom<17]{
    polygon-fill: rgb(116,220,186);
    line-color: rgb(136,136,136);
    line-width: 0.5;
  }
   /*3d style*/
  [leisure='track'][zoom>=17]{

  }
  
  [leisure='pitch'][zoom>=10][zoom<17]{
    polygon-fill: @grassColor;
    line-color: rgb(136,136,136);
    line-width: 0.5;
  }
}
#landuse_overlay{
 /* [landuse='military'][zoom>=10][zoom<17]{
    polygon-pattern-file: url("symbols/military_red_hz2.png");
    line-color: rgb(255,85,85);
    line-width: 3;
    line-opacity: 0.33;
  }*/
  [landuse='nature_reserve']{
    [zoom>=10][zoom<14]{
      polygon-pattern-file: url("symbols/nature_reserve5.png");
      line-color: rgb(102,204,51);
      line-width: 0.5;
    }
    [zoom>=14][zoom<17]{
      polygon-pattern-file: url("symbols/nature_reserve6.png");
      line-color: rgb(102,204,51);
      line-width: 1;     
    }
    /*3d style*/
    [zoom>=17]{   
    }
  }
}
#misc_boundaries {
    [zoom > 6] [ zoom < 10] {
        line-width: 1.5;
        line-opacity: 0.15;
        line-dasharray: 4,2;
        line-color: @boundary-color;
        polygon-fill: @boundary-color;
        polygon-opacity: 0.05;
    }
    [zoom > 9][ zoom < 13] {
        line-width: 3;
        line-opacity: 0.15;
        line-dasharray: 6,2;
        line-color: @boundary-color;
        polygon-fill: @boundary-color;
        polygon-opacity: 0.05;
    }
    [zoom >= 13] {
        line-width: 3;
        line-opacity: 0.15;
        line-dasharray: 6,2;
        line-color: @boundary-color;
    }
    [zoom > 7][ zoom < 10][way_area>=200000000] {
        text-face-name: @bold-fonts;
        text-wrap-width: 14;
        text-size: 8;
        text-halo-radius: 1;
        text-fill: rgb(153,204,153);
        text-name: '[name]';
    }
    [zoom > 9][ zoom < 12] {
        text-face-name: @book-fonts;
        text-wrap-width: 14;
        text-size: 11;
        text-halo-radius: 1;
        text-fill: rgb(153,204,153);
        text-name: '[name]';
    }
}
#admin-other {
    [admin_level=10], [admin_level=9] {
        [zoom>15] {
            line-color: rgb(128,0,128);
            line-width: 2;
            line-opacity: 0.3;
            line-dasharray: 2,3;
        }
    }
    [admin_level!=''] {
        [zoom<15][zoom>8] {
            line-color: rgb(128,0,128);
            line-width: 1;
            line-opacity: 0.2;
        }
    }
}

#admin-5678 {
    [admin_level=5] {
        [zoom>10] {
            line-color: rgb(128,0,128);
            line-width: 2;
            line-opacity: 0.3;
            line-dasharray: 6,3,2,3,2,3;
        }
    }
    [admin_level=6] {
        [zoom>10] {
            line-color: rgb(128,0,128);
            line-width: 2;
            line-opacity: 0.3;
            line-dasharray: 6,3,2,3;
        }
    }
    [admin_level=7], [admin_level=8] {
        [zoom>11] {
            line-color: rgb(128,0,128);
            line-width: 1.5;
            line-opacity: 0.2;
            line-dasharray: 5,3;
        }
    }
}

#admin-01234 {
    [admin_level=2], [admin_level=3] {
        [zoom<7][zoom>3] {
            line-color: rgb(128,0,128);
            line-width: .6;
            line-opacity: 0.2;
        }
        [zoom<10][zoom>=7] {
            line-color: rgb(128,0,128);
            line-width: 2;
            line-opacity: 0.2;
        }
    }
    [admin_level=2] {
        [zoom>=10] {
            line-color: rgb(128,0,128);
            line-width: 6;
            line-opacity: 0.1;
        }
    }
    [admin_level=3] {
        [zoom>=10] {
            line-color: rgb(128,0,128);
            line-width: 5;
            line-opacity: 0.1;
            line-dasharray: 4,2;
        }
    }
    [admin_level=4] {
        [zoom<7][zoom>3] {
            line-color: rgb(128,0,128);
            line-width: 5;
            line-opacity: 0.6;
            line-dasharray: 4,3;
        }
        [zoom<10][zoom>=7] {
            line-color: rgb(128,0,128);
            line-width: 1;
            line-opacity: 0.1;
            line-dasharray: 4,3;
        }
        [zoom>=10] {
            line-color: rgb(128,0,128);
            line-width: 3;
            line-opacity: 0.1;
            line-dasharray: 4,3;
        }
    }
}
