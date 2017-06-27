@worldcolor: rgb(242,239,233);
#world{
  [zoom <= 10]{
    polygon-fill: @worldcolor;
  }
}

@coastpoly: rgb(242,239,233);
#coast-poly{
  [zoom > 10]{
    polygon-fill: @coastpoly;
  }
}

@builtupcolor:rgb(221,221,221);
#builtup
{
  [zoom >=8][zoom <=11]{
    polygon-fill: @builtupcolor;
  }
}
@necountriescolor: rgb(128,128,128);
#necountries{
  [zoom >1][zoom <= 4]{
    line-color: @necountriescolor;
    line-width: 0.5;
  }
}
#nepopulated[SCALERANK = 1][zoom>=3][zoom<=5]{
    text-face-name: @book-fonts;
    text-name:[NAMEASCII];
    text-fill: @necountriescolor; 
    text-size:8;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
    text-dy: 2;
}
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
  [tourism='attraction']{
    [zoom>=10]{
      polygon-fill: rgb(242,202,234);
    }
  }
}
