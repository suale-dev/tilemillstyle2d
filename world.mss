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
