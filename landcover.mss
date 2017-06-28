@landcover-swimmingpoll-fill: rgb(181,208,208);
@landcover-swimmingpoll-line: rgb(0,0,255);
@landcover-playground-fill: rgb(204,255,241);
@landcover-playground-line: rgb(102,102,102);
#landcover{
  [leisure='swimming_pool'][zoom >=17]{
    polygon-fill:@landcover-swimmingpoll-fill ;
    line-color: @landcover-swimmingpoll-line;
    line-width: 0.5;
  }
  [leisure='playground'][zoom >= 13]{
    polygon-fill:@landcover-playground-fill ;
    line-color: @landcover-playground-line;
    line-width: 0.3;
  }
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
    [zoom<=15][zoom>=10]{
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
  [military='barracks'][zoom>=10]{
    polygon-fill: rgb(255,143,143);
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
  [military='danger_area']{
    [zoom<11][zoom>=9]{
      polygon-fill: rgb(255,192,203);
      polygon-opacity: 0.3;
    }
    [zoom>=11]{
      polygon-pattern-file: url("symbols/danger.png");
    }
  }
  [landuse='cemetery'][religion='jewish'],[landuse='grave_yard'][religion='jewish'],[amenity='grave_yard'][religion='jewish']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/cemetery_jewish.18.png");
    }
  }
  [landuse='cemetery'][religion='christian'],[landuse='grave_yard'][religion='christian'],[amenity='grave_yard'][religion='christian']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/cemetery_jewish.18.png");
    }
  }
  [landuse='cemetery'][religion='INT-generic'],[landuse='grave_yard'][religion='INT-generic'],[amenity='grave_yard'][religion='INT-generic']{
    [zoom>=14]{
      polygon-pattern-file: url("symbols/grave_yard_generic.png");
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
  [tourism='zoo'][zoom>=10]{
    polygon-pattern-file: url("symbols/zoo.png");
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
  [landuse='farm'],[landuse='farmland']{
    [zoom>=9]{
      polygon-fill: rgb(234,216,189);
    }
  }
  [landuse='recreation_ground'],[landuse='conservation']{
    [zoom>=10]{
      polygon-fill: rgb(207,236,168);
    }
  }
  [landuse='village_green'][zoom>11]{
    polygon-fill:rgb(207,236,168);
  }
  [landuse='retail']{
    [zoom>=10]{
      polygon-fill: rgb(241,218,218);
    }
    [zoom>=18]{
      line-color: rgb(255,0,0);
      line-width: 0.3
    }
  }
  [landuse='industrial'],[landuse='railway']{
    [zoom>=10]{
      polygon-fill: rgb(223,209,214);
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
  [landuse='commercial'][zoom>=10]{
    polygon-fill: rgb(239,200,200);
  }
  [landuse='brownfield'],[landuse='landfill'],[landuse='greenfield'],[landuse='construction']{
    [zoom>=10]{
      polygon-fill: rgb(157,157,108);
      polygon-opacity: 0.7;
    }
  }
  [natural='wood'],[landuse='wood']{
    [zoom>=8]{
      polygon-fill: rgb(174,209,160);
    }
  }
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
  [amenity='university'],[amenity='college'],[amenity='school'],[amenity]='hospital'],[amenity='kindergarten']{
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
  [aeroway='apron'][zoom>=12]{
    polygon-fill: rgb(233,209,255);
  }
  [aeroway='aerodrome'][zoom>=12]{
    polygon-fill: rgb(204,204,204);
    polygon-opacity: 0.2;
    line-color: rgb(85,85,85);
    line-width: 0.2;
  }
  [natural='beach'][zoom>=13]{
    polygon-pattern-file: url("symbols/beach.png");
  }
  [highway='services'],[highway='rest_area']{
    [zoom>=14]{
      polygon-fill: rgb(239,200,200);
    }
  }
}
