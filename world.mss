#hsa-tsa{
 line-color: #ffffff;
 line-width: 1.5;
 text-name: [name];
 text-fill: @text-lowzoom;
 text-size:8;
 text-halo-fill: rgba(255,255,255,0.8);
 text-halo-radius:1;
   text-face-name: @book-fonts;
}
#necountries{
  [zoom >=1][zoom < 4]{
    line-color: @necountriescolor;
    line-width: 0.5;
  }
}
#bathymetry {
  polygon-fill:hsl(120,15%,2%);
  polygon-comp-op: minus;
}
#nepopulated[SCALERANK=2][zoom>=2][zoom<5]{
    text-face-name: @book-fonts;
    text-name:[NAMEASCII];
    text-fill: @text-lowzoom;
    text-size:8;
    text-halo-fill: rgba(255,255,255,0.8);
    text-halo-radius:1;
    text-dy: 2;
}
#border-countries{
  [zoom>=4][zoom<7]{
    line-color: @border-country-lowzoom;
    line-width: 0.7;
  }
  [zoom>=7][zoom<9]{
    line-color: @border-country-lowzoom;
    line-opacity: 0.6;
    line-width: 1;
  }
  [zoom>=9][zoom<=@max-zoom]{
    line-color: @border-country;
    line-opacity: 0.6;
    line-width: 1;
  }
}
#border-city{
  [zoom>=7][zoom <= @max-zoom]{
    line-color: @border-city;
    line-width: 0.5;
  }
}
#interpolation_lines {
    [zoom>=16][zoom <= @max-zoom] {
        line-width: 1;
        line-dasharray: 2,4;
        line-color: rgb(136,136,136);
    }
}