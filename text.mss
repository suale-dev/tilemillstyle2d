//water color
#glaciers-text{
  [way_area>=10000000][zoom>=10]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: @area-name-size;
    text-halo-radius: 1;
    text-fill: @area-name-color;
    text-name: "[name]";
  }
  
  [way_area>=5000000][way_area<10000000][zoom>=11]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: @area-name-size;
    text-halo-radius: 1;
    text-fill: @area-name-color;
    text-name: "[name]";
  }
  
  [way_area<5000000][zoom>=12]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: @area-name-size;
    text-halo-radius: 1;
    text-fill: @area-name-color;
    text-name: "[name]";
  }
}
#housenames {
    [zoom >= 16]{
        text-fill: @housenames-color;
        text-wrap-width: 20;
        text-face-name: @book-fonts;
        text-size: 8;
        text-placement: 'interior';
        text-dy: 0;
        text-name: '[addr:housename]';
    }
}
#housenumbers {
    [zoom >= 16] {
        text-fill: @housenames-color;
        text-wrap-width: 0;
        text-face-name: @bold-fonts;
        text-size: 9;
        text-placement: 'interior';
        text-min-padding: 1;
        text-dy: 0;
        text-name: '[addr:housenumber]';
    }
}
#area-text {
    [way_area>=150000] {
        [zoom > 13] {
            text-placement: 'interior';
            text-wrap-width: 50;
            text-name: '[name]';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-halo-fill: rgb(255,255,255);
            text-fill: rgb(76,76,76);
            text-size: 12;
        }
    }
    [way_area >= 80000][way_area < 150000] {
        [zoom > 14]{
            text-placement: 'interior';
            text-wrap-width: 20;
            text-halo-radius: 2;
            text-halo-fill: rgb(255,255,255);
            text-fill: rgb(76,76,76);
            text-size: 12;
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    }
    [way_area >= 20000][way_area < 80000] {
        [zoom > 15]{
            text-placement: 'interior';
            text-wrap-width: 20;
            text-halo-radius: 2;
            text-halo-fill: rgb(255,255,255);
            text-fill: rgb(76,76,76);
            text-size: 12;
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    }
    [way_area < 20000] {
        [zoom > 16] {
            text-placement: 'interior';
            text-wrap-width: 20;
            text-halo-radius: 1;
            text-fill: rgb(0,0,51);
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    }
}
#text-poly,#text {
    [place = 'island'] {
        [zoom>11]{
            text-placement: 'interior';
            text-dy: 0;
            text-wrap-width: 0;
            text-face-name: @oblique-fonts;
            text-size: @area-name-size;
            text-fill: @area-name-color;
            text-halo-radius: 2;
            text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
        }
    }
    [amenity='pub'],
    [amenity='restaurant'],
    [amenity='cafe'],
    [amenity='fast_food'],
    [amenity='biergarten'] {
        [zoom>16] {
            text-dy: 9;
            text-wrap-width: 34;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-size: @area-name-size;
            text-fill: @area-name-color;
        }
    }
    [amenity='bar'] {
        [zoom>16] {
            text-dy: 11;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
            text-placement: 'interior';
        }
    }
    [amenity='library'],
    [amenity='theatre'],
    [amenity='courthouse'] {
        [zoom>16] {
            text-dy: 12;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(115, 74, 8);
            text-placement: 'interior';
        }
    }
    [amenity='cinema'] {
        [zoom>16] {
            text-dy: 14;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(115, 74, 8);
            text-placement: 'interior';
        }
    }
    [amenity='parking'][access = 'public'],
    [access=''] {
        [zoom > 16] {
            text-dy: 9;
            text-placement: 'interior';
            text-wrap-width: 34;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
            text-placement: 'interior';
        }
    }
    [amenity='parking'][access !='public'],
    [access !=''] {
        [zoom > 16] {
            text-dy: 9;
            text-placement: 'interior';
            text-wrap-width: 34;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(102, 204, 175);
        }
    }
    [amenity='police'] {
        [zoom > 16] {
            text-dy: 10;
            text-placement: 'interior';
            text-wrap-width: 30;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
    [amenity='fire_station'] {
        [zoom > 16] {
            text-dy: 9;
            text-placement: 'interior';
            text-wrap-width: 30;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
    [amenity='place_of_worship'] {
        [zoom > 16] {
            text-dy: 11;
            text-placement: 'interior';
            text-wrap-width: 30;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
    }
    [amenity='embassy'] {
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 0;
            text-dy: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
    }
    [amenity='shelter'] {
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 10;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
    }
    [amenity='bank'] {
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 0;
            text-dy: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
    }
    [amenity='fuel'],
    [amenity='bus_station'] {
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 0;
            text-dy: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }
    }
    [amenity='school'],
    [amenity='college'] {
        [zoom>14]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: @area-name-size;
            text-wrap-width: 14;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color;
        }
    }
    [amenity='kindergarten'] {
        [zoom>=15]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: @area-name-size;
            text-wrap-width: 14;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color;
        }
    }
    [amenity='hospital'] {
        [zoom>=15]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: @area-name-size;
            text-dy: 10;
            text-wrap-width: 24;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color;
        }
    }
    [amenity='pharmacy'] {
        [zoom>16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 9;
      text-avoid-edges: true;
    text-clip: false;
            text-wrap-width: 12;
            text-name: '[name]';
            text-fill: rgb(218, 0, 146);
        }
    }
}

#text-natural,#text-poly-natural{
    [natural='wood'] {
        [zoom > 14]{
            text-placement: 'interior';
            text-wrap-width: 10;
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='peak'] {
        [zoom > 12]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='peak'][name=''] {
        [zoom > 13]  {
            text-placement: 'interior';
            text-dy: 6;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='peak'][name !=''] {
        [zoom > 13]{
            text-placement: 'interior';
            text-dy: 18;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='volcano'] {
        [zoom > 12]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 5;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='volcano'][name=''] {
        [zoom > 13]{
            text-placement: 'interior';
            text-dy: 6;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
          }
    }
    [natural='volcano'][name !=''] {
        [zoom > 13] {
            text-placement: 'interior';
            text-dy: 16;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
          }
    }
    [natural='cave_entrance'] {
        [zoom > 14]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 9;
            text-wrap-width: 20;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='water'],
    [natural='lake'][landuse='reservoir'],
    [landuse='basin'] {
        [zoom > 14]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 20;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(102, 153, 204);
        } 
    }
    [natural='bay'] {
        [zoom > 13]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
    }
    [natural='spring'] {
        [zoom > 15] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 10;
            text-wrap-width: 20;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: rgb(102, 153, 204);
        }
    } 
}
#text-tourism,#text-poly-tourism{
    [tourism='alpine_hut'] {
        [zoom = 15] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: @area-name-size;
            text-dy: 10;
            text-wrap-width: 20;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color;
        }
        [zoom >= 16] {
            text-placement: 'interior';
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: @area-name-size;
            text-dy: 22;
            text-wrap-width: 20;
            text-name: '[ele]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color;
        }
    }
    [tourism='hotel'],
    [tourism='hostel'],
    [tourism='chalet'] {
            /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 0;
            text-dy: 9;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }
    }
    [tourism='guest_house'] {
            /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 0;
            text-dy: 9;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }
    }
    [tourism='bed_and_breakfast'] {
            /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-wrap-width: 0;
            text-dy: 7;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }
    }
    [tourism='camp_site'] {
            /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 70;
            text-size: 8;
            text-dy: 15;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }
    }
    [tourism='caravan_site'] {
            /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 70;
            text-size: 8;
            text-dy: 19;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }
    }
   

    [tourism='museum'] {
        /*3d style*/
        [zoom>16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-dy: 10;
            text-wrap-width: 0;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
    [tourism='prison'] {
        /*3d style*/
        [zoom>16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-dy: 16;
            text-wrap-width: 0;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
    [tourism='attraction'] {
        [zoom>15] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 10;
            text-name: '[name]';
            text-fill: rgb(102, 0, 51);
      text-avoid-edges: true;
    text-clip: false;
        }
        /*3d style*/
        [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 10;
            text-name: '[name]';
            text-fill: rgb(102, 0, 51);
        }
    }
    [tourism='university'] {
        [zoom>14]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: @area-name-size;
            text-wrap-width: 16;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color;
        }
    }
  
     [tourism='theme_park'] {
        [zoom>13]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-wrap-width: 30;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-size: @area-name-size;
            text-fill: @area-name-color;
        }
    }
   
}
#text-shop, #text-poly-shop{
    [shop='bakery'],
    [shop='clothes'],
    [shop='fashion'],
    [shop='convenience'],
    [shop='doityourself'],
    [shop='hairdresser'],
    [shop='butcher'],
    [shop='car'],
    [shop='car_repair'],
    [shop='bicycle'],
    [shop='florist'] {
        /*3d style*/
        [zoom>16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 9;
            text-wrap-width: 12;
            text-name: '[name]';
            text-fill: rgb(153, 51, 153);
        }
    }
    [shop='supermarket'],
    [shop='department_store'] {
        [zoom>=16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: @area-name-size;
            text-dy: 9;
            text-wrap-width: 20;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color;
        }
    }
}

#text-other, #text-poly-other
{
 [man_made='lighthouse'] {
        [zoom>14] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: @area-name-size;
            text-dy: 16;
      text-avoid-edges: true;
    text-clip: false;
            text-wrap-width: 12;
            text-name: '[name]';
            text-fill: @area-name-color;
        }
    }
    [man_made='windmill'] {
        /*3d style*/
        [zoom>16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 12;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
   
    [military='danger_area'] {
        [zoom>11] {
            text-placement: 'interior';
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-size: @area-name-size;
            text-dy: 9;
            text-wrap-width: 10;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: @area-name-color;
        }
    }
    [aeroway='gate'] {
        /*3d style*/
        [zoom>16] {
            text-placement: 'interior';
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 9;
            text-wrap-width: 10;
            text-name: '[name]';
            text-fill: rgb(170, 102, 204);
        }
    } 
    [leisure !=''],
    [landuse ! ''] {
        [point = 'yes'] {
            [zoom > 14]{
                text-placement: 'interior';
                text-face-name: @book-fonts;
                text-halo-radius: 2;
                text-size: @area-name-size;
                text-wrap-width: 20;
                text-name: '[name]';
        text-avoid-edges: true;
    text-clip: false;
                text-fill: @area-name-color;
            }
        }
    }
    [leisure='marina'] {
        [zoom > 14]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 30;
            text-size: @area-name-size;
            text-name: '[name]';
      text-avoid-edges: true;
    text-clip: false;
            text-fill: @area-name-color
        }
    }
    [historic='memorial'],
    [historic='archaeological_site'] {
        [zoom > 14] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: @area-name-size;
            text-dy: 12;
            text-wrap-width: 20;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: @area-name-color;
        }
    }
     [waterway='lock'] {
        [zoom > 14]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 70;
            text-size: @area-name-size;
            text-dy: 10;
      text-avoid-edges: true;
    text-clip: false;
            text-name: '[name]';
            text-fill: @area-name-color;
        }
    }
}
/*verified*/

#roads-text-name {
    [highway!=''] {
        [zoom>14]{
        text-placement: 'line';
        text-face-name: @book-fonts;
        text-spacing: 400;
        text-size: @road-name-sizeM;
        text-fill: @road-name-color;
        text-halo-radius: 2;
        text-halo-fill: rgb(255,255,255);
        text-allow-overlap: false;
    text-avoid-edges: true;
    text-clip: false;
        text-name: '[name]';
        }
        [zoom=17]{
            text-size: @road-name-sizeL;
        }
        [zoom>=18]{
            text-size: 14;
        }
    }
    [highway='trunk'], [highway='primary'] {
        [zoom=13]{
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: @road-name-sizeS;
            text-name: '[name]';
            text-fill: @road-name-color;
            text-halo-fill: rgb(255,255,255);
            text-halo-radius: 1;
      text-allow-overlap: false;
      text-avoid-edges: true;
    text-clip: false;
            text-repeat-distance: 10;
        }
        [zoom>=14] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-name: '[name]';
            text-fill: @primary-road-name-color;
            text-size: @road-name-sizeM;
            text-halo-fill: rgb(255,255,255);
      text-allow-overlap: false;
      text-avoid-edges: true;
    text-clip: false;
            text-halo-radius: 2;
        }
        [zoom=17]{
            text-size: @road-name-sizeL;
        }
        [zoom>=18]{
            text-size: 14;
        }
    }
    [highway='secondary'] {
        [zoom=13]{
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: @road-name-sizeS;
            text-name: '[name]';
            text-halo-fill: rgb(255,255,255);
            text-halo-radius: 1;
            text-fill: @road-name-color;
      text-allow-overlap: false;
      text-avoid-edges: true;
    text-clip: false;
            text-repeat-distance: 10;
        }
        [zoom>=14] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-name: '[name]';
            text-size: @road-name-sizeM;
            text-fill: @road-name-color;
            text-halo-fill: rgb(255,255,255);
      text-allow-overlap: false;
      text-avoid-edges: true;
    text-clip: false;
            text-halo-radius: 2;      
        }
        [zoom=17]{
            text-size: @road-name-sizeL;
        }
        [zoom>=18]{
            text-size: 14;
        }
    }
    [highway='tertiary'] {
        [zoom>=14] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: @road-name-sizeM;
            text-fill: @road-name-color;
            text-name: '[name]';
            text-halo-fill: rgb(255,255,255);
      text-avoid-edges: true;
    text-clip: false;
      text-allow-overlap: false;
            text-halo-radius: 2
        }
        [zoom=17]{
            text-size: @road-name-sizeL;
        }
        [zoom>=18]{
            text-size: 14;
        }
    }
    [highway='proposed'], [highway='construction'] {
        [zoom>=16] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: @road-name-sizeM;
            text-fill: @road-name-color;
            text-halo-radius: 2;
            text-halo-fill: rgb(255,255,255);
      text-avoid-edges: true;
    text-clip: false;
      text-allow-overlap: false;
            text-name: '[name]';
        }
        [zoom=17]{
            text-size: @road-name-sizeL;
        }
        [zoom>=18]{
            text-size: 14;
        }
    }
    [highway='unclassified'], [highway='residential'] {
        [zoom=15] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-spacing: 300;
            text-size: @road-name-sizeM;
            text-fill: @road-name-color;
            text-halo-fill:rgb(255,255,255);
      text-allow-overlap: false;
      text-avoid-edges: true;
    text-clip: false;
            text-halo-radius: 1;
            text-name: '[name]';
        }    
   		 [zoom>=16] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-spacing: 300;
            text-size: 9;
            text-halo-radius: 1;
            text-name: '[name]';
      text-allow-overlap: false;
      text-avoid-edges: true;
    text-clip: false;
        }
        [zoom=17]{
            text-size: @road-name-sizeL;
        }
        [zoom>=18]{
            text-size: 14;
        }
    }
}

/*verified*/
#roads-text-ref {
    [highway='motorway'][length<=6] {
        [zoom>12][zoom<17] {
            shield-file: 'symbols/mot_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-fill:rgb(0,0,0);
            shield-spacing: 750;
            shield-min-distance: 100;
        }
    }
    [highway='motorway'][length =7] {
        [zoom>12][zoom<17] {
            shield-file: 'symbols/mot_shield6.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill: rgb(0,0,0);
            shield-min-distance: 100;
        }
    }
   [highway='motorway'][length =8] {
        [zoom>12] [zoom<17] {
            shield-file: 'symbols/mot_shield7.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(0,0,0);
            shield-min-distance: 100;
        }
    }
    [highway='trunk'] {
        [zoom>12][zoom<15]{
            shield-file: 'symbols/tru_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
            shield-min-distance: 100;
        }
        [zoom>=15][zoom<17]{
            shield-file: 'symbols/tru_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
            shield-min-distance: 500;
        }
    }
    [highway='primary'] {
        [zoom>12][zoom<15]  {
            shield-file: 'symbols/pri_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
            shield-min-distance: 100;
        }
        /*3d style*/
        [zoom>=15][zoom<17]{
            shield-file: 'symbols/pri_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
            shield-min-distance: 500;
        }
    }
    [highway='secondary'][bridge !='yes'] {
        [zoom>12][zoom<17]  {
            shield-file: 'symbols/sec_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(0,0,0);
            shield-min-distance: 100;
        }
    }
    [highway='tertiary'][bridge !='yes'] {
        [zoom>12][zoom<17]{
            shield-file: 'symbols/ter_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(0,0,0);
            shield-min-distance: 100;
        }
    }
    [highway='unclassified'], [highway ='residential'] {
        [bridge !='yes'] {
            [zoom>14]{
                text-placement: 'line';
                text-min-distance: 18;
                text-name: '[ref]';
                text-face-name: @bold-fonts;
                text-spacing: 750;
                text-fill:rgb(51,51,51);
                text-halo-radius: 1;
            }
        }
    }
    [aeroway='runway'], [aeroway ='taxiway'] {
        [bridge !='yes'] {
            [zoom>14]{
                text-placement: 'line';
                text-min-distance: 18;
                text-name: '[ref]';
                text-face-name: @bold-fonts;
                text-spacing: 750;
                text-fill:rgb(51,51,51);
                text-halo-radius: 1;
            }
        }
    }
  }


#highway-junctions {
    [zoom>10][zoom<12] {
        text-min-distance: 2;
        text-name: '[ref]';
        text-face-name: @oblique-fonts;
        text-size: 9;
        text-fill:rgb(102,102,255);
        text-halo-radius: 1;
        text-wrap-width: 12;
    }
    [zoom>11][zoom<15] {
            text-min-distance: 2;
            text-name: '[name]';
            text-face-name: @oblique-fonts;
            text-size: 8;
            text-dy: -8;
            text-fill:rgb(102,102,255);
            text-halo-radius: 1;
            text-wrap-width: 2;
        }
    
    [zoom>14]{
            text-min-distance: 2;
            text-name: '[name]';
            text-face-name: @oblique-fonts;
            text-size: 11;
            text-dy: -10;
            text-fill:rgb(102,102,255);
            text-halo-radius: 1;
            text-wrap-width: 12;  
    }
}

#roads-text-ref-low-zoom {
    [highway='motorway'][length<=6] {
        [zoom>9][zoom<13] {
            shield-file: 'symbols/mot_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-fill: rgb(0,0,0);
            shield-face-name: @bold-fonts;
            shield-min-distance : 50;
        }
    }
    [highway='motorway'][length=7] {
        [zoom>9][zoom<13] {
            shield-file: 'symbols/mot_shield6.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-fill: rgb(0,0,0);
            shield-face-name: @bold-fonts;
            shield-min-distance : 50;
        }
    }
    [highway='motorway'][length=8] {
        [zoom>9][zoom<13] {
            shield-file: 'symbols/mot_shield7.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-fill: rgb(0,0,0);
            shield-face-name: @bold-fonts;
            shield-min-distance : 50;
        }
    }
    [highway='trunk'] {
        [zoom=10]{
            shield-file: 'symbols/tru_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-min-distance : 20;
            shield-fill:rgb(255,255,255);
        }
        [zoom>=11][zoom<13] {
            shield-file: 'symbols/tru_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-min-distance : 50;
            shield-fill:rgb(255,255,255);
        }
    }
    [highway='primary'] {
        [zoom>9][zoom<13] {
            shield-file: 'symbols/pri_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-min-distance : 50;
            shield-fill:rgb(255,255,255);
        }
    }
    [highway='secondary'] {
        [zoom>11][zoom<13] {
            shield-file: 'symbols/sec_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 40;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-min-distance : 50;
            shield-fill:rgb(0,0,0);
        }
    }
}
#amenity-symbols-poly, #amenity-symbols {
    [aeroway ='helipad'] {
        [zoom>15] {
            point-file: 'symbols/helipad.p.16.png';
            text-placement: 'interior';
            text-dy: -10;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 8;
            text-halo-radius: 1;
            text-fill: rgb(102,146,218);
            text-name: '[name]';
        }
    }
    [aeroway ='airport'] {
        [zoom > 8][zoom < 11] {
            point-file: 'symbols/airport.p.16.png';
            text-placement: 'interior';
            text-dy: -12;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 8;
            text-halo-radius: 1;
            text-fill: rgb(102,146,218);
            text-name: '[name]';
        }
        [zoom > 10][zoom < 13] {
            point-file: 'symbols/airport.p.16.png';
            text-placement: 'interior';
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-fill: rgb(102,146,218);
            text-name: '[name]';
        }
    }
    [aeroway ='aerodrome'] {
        [zoom = 10] {
            point-file: 'symbols/airport.p.16.png';
            text-placement: 'interior';
            text-dy: -12;
            text-wrap-width: 0;
            text-face-name: @oblique-fonts;
            text-size: 8;
            text-halo-radius: 1;
            text-fill: rgb(102,146,218);
            text-name: '[name]';
        }
        [zoom > 10][zoom < 13] {
            point-file: 'symbols/airport.p.16.png';
            text-placement: 'interior';
            text-face-name: @oblique-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-fill: rgb(102,146,218);
            text-name: '[name]';
        }
    }
}
.suburb {
    [place='suburb'] {
        [zoom>11][zoom<14] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: @village-name-sizeS;
            text-halo-radius: 2;
            text-margin: 2;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
            text-transform: uppercase;
        }
        [zoom>=14] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: @village-name-sizeM;
            text-halo-radius: 2;
            text-margin: 2;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
            text-transform: uppercase;
        }
    }
}
.village {
    [place='village'], [place='village'] {
        [zoom>11][zoom<15] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: @village-name-sizeS;
            text-halo-radius: 1;
            text-margin: 1;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
            text-transform: uppercase;
        }
        [zoom>=15] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: @village-name-sizeM;
            text-halo-radius: 2;
            text-margin: 2;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
            text-transform: uppercase;
        }
    }
}
.hamlet {
    [place='suburb'], [place='locality'], [place='isolated_dwelling'], [place='farm'] {
        [zoom>11][zoom<15] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: @village-name-sizeS;
            text-halo-radius: 2;
            text-margin: 2;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
            text-transform: uppercase;
        }
        [zoom>=15] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: @village-name-sizeM;
            text-halo-radius: 2;
            text-margin: 2;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
            text-transform: uppercase;
        }
    }
}

.city {
    [place='city'], [place='metropolis'] {
        [zoom=7]{
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-fill: rgb(35,35,35);
            text-size: @city-names-sizeS;
            text-halo-radius: 1;
            text-margin: 1;
            text-halo-fill: rgb(255,255,255);
            text-name: '[name]';
            text-opacity: 0.8
        }
        [zoom>=8][zoom<11] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-fill: rgb(35,35,35);
            text-size: @city-names-sizeM;
            text-halo-radius: 1;
      text-allow-overlap: false;
            text-margin: 1;
            text-halo-fill: rgb(255,255,255);
            text-name: '[name]';
        }
        [zoom>=11][zoom<15] {
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: @city-names-sizeL;
            text-halo-radius: 2.5;
            text-margin: 3;
            text-halo-fill: rgb(255,255,255);
            text-name: '[name]';
            text-transform: uppercase;
        }
    }
}
.town {
    [place='town'], [place='large_town']{
        [zoom>=9][zoom<12]{
      text-allow-overlap: false;
            text-face-name: @bold-fonts;
            text-halo-radius: 2;
            text-margin: 2;
            text-size: @town-name-sizeS;
            text-fill: rgb(76,76,76);
            text-name: '[name]';
            text-avoid-edges: true;
            text-allow-overlap: false;
        }
    }
    [place='town'], [place='large_town'], [place='small_town'] {
        [zoom>=12][zoom<14] {
            text-face-name: @bold-fonts;
            text-halo-radius: 2;
            text-margin: 2;
            text-fill: rgb(36,36,36);
            text-size: @town-name-sizeM;
            text-name: '[name]';
            text-transform: uppercase;
        }
        [zoom>=14] {
            text-face-name: @bold-fonts;
            text-fill: rgb(36,36,36);
            text-halo-radius: 2;
            text-margin: 2;
            text-size: @town-name-sizeL;
            text-name: '[name]';
            text-transform: uppercase;
        }
    }
}
#placenames-capital {
    [zoom=5] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 9;
        text-face-name: @bold-fonts;
        text-halo-radius: 2;
        text-name: '[name]';
        text-fill: @text-lowzoom;
    }
    [zoom>=6][zoom<9] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 12;
        text-face-name: @bold-fonts;
        text-halo-radius: 2;
        text-name: '[name]';
        text-fill: @text-lowzoom;
    }
    [zoom>=9][zoom<11] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 14;
        text-face-name: @bold-fonts;
        text-halo-radius: 2;
        text-name: '[name]';
    }
    [zoom>=11][zoom<15] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 16;
        text-face-name: @bold-fonts;
        text-halo-radius: 3;
        text-name: '[name]';
    }
}
.country {
    [zoom=3]{
        text-dy: 0;
        text-face-name:@book-fonts;
        text-halo-radius: 2;
        text-size: 9;
        text-margin: 2;
        text-fill: @country-name-color;
        text-name: '[NAME]';
        text-transform: uppercase;
    }
    [zoom=4]{
        text-dy: 0;
        text-face-name:@bold-fonts;
        text-halo-radius: 2;
        text-margin: 2;
        text-size: 9;
        text-fill: @country-name-color;
        text-name: '[NAME]';
        text-transform: uppercase;
    }
    [zoom>=5][zoom<8] {
        text-dy: 0;
        text-face-name:@bold-fonts;
        text-halo-radius: 2;
        text-margin: 2;
        text-size: 12;
        text-fill: @country-name-color;
        text-name: '[NAME]';
        text-transform: uppercase;
    }
}
.state {
    [place='state']{
        [zoom=6][name!='Hưng Yên'][name!='Bắc Ninh'][name!='Hải Dương']{
            text-dy: 0;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-halo-radius: 2.5;
            text-margin: 3;
            text-size: 8;
            text-fill: @text-lowzoom;
            text-name: '[name]';
            text-transform: uppercase;
        }
        [zoom>=7][zoom<8] {
            text-dy: 0;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-halo-radius: 2.5;
            text-margin: 3;
            text-size: 10;
            text-fill: rgb(36,36,36);
            text-name: '[name]';
            text-transform: uppercase;
        }
    }
}