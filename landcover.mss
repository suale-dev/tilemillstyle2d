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
}
#landcover1{
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
}   