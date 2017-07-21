//water color
#glaciers-text{
  [way_area>=10000000][zoom>=10][zoom<17]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
  /*3d style*/
  [way_area>=10000000][zoom>=17]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
  
  [way_area>=5000000][way_area<10000000][zoom>=11][zoom<17]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
  /*3d style*/
  [way_area>=5000000][way_area<10000000][zoom>=17]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
  
  [way_area<5000000][zoom>=12][zoom<17]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
  /*3d style*/
  [way_area<5000000][zoom>=17]{
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 9;
    text-halo-radius: 1;
    text-fill: rgb(153,153,255);
    text-name: "[name]";
  }
}
#housenames {
    [zoom > 16][zoom < 17] {
        text-fill: @housenames-color;
        text-wrap-width: 20;
        text-face-name: @book-fonts;
        text-size: 8;
        text-placement: 'interior';
        text-dy: 0;
        text-name: '[addr:housename]';
    }
    /*3d style*/
    [zoom >= 17] {
        text-fill: @housenames-color;
        text-wrap-width: 20;
        text-face-name: @book-fonts;
        text-size: 9;
        text-placement: 'interior';
        text-dy: 0;
        text-name: '[addr:housename]';
    }
}
#housenumbers {
    [zoom = 16] {
        text-fill: @housenames-color;
        text-wrap-width: 0;
        text-face-name: @bold-fonts;
        text-size: 9;
        text-placement: 'interior';
        text-min-padding: 1;
        text-dy: 0;
        text-name: '[addr:housenumber]';
    }
   /*3d style*/
      [zoom > 16] {
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
        [zoom > 13][zoom<17] {
            text-placement: 'interior';
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    /*3d style*/
         [zoom >=17] {
            text-placement: 'interior';
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    }
    [way_area >= 80000][way_area < 150000] {
        [zoom > 14][zoom < 17] {
            text-placement: 'interior';
            text-wrap-width: 20;
            text-halo-radius: 1;
            text-fill: rgb(0,0,51);
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    /*3d style*/
        [zoom >= 14] {
            text-placement: 'interior';
            text-wrap-width: 20;
            text-halo-radius: 1;
            text-fill: rgb(0,0,51);
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    }
    [way_area >= 20000][way_area < 80000] {
        [zoom > 15][zoom < 17] {
            text-placement: 'interior';
            text-wrap-width: 20;
            text-halo-radius: 1;
            text-fill: rgb(0,0,51);
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
        /*3d style*/
            [zoom >= 17] {
            text-placement: 'interior';
            text-wrap-width: 20;
            text-halo-radius: 1;
            text-fill: rgb(0,0,51);
            text-name: '[name]';
            text-face-name: @book-fonts;
        }
    }
    [way_area < 20000] {
        /*3d style*/
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
        [zoom>11] [zoom < 17] {
            text-placement: 'interior';
            text-dy: 0;
            text-wrap-width: 0;
            text-face-name: @oblique-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-name: '[name]';
        }
            /*3d style*/
            [zoom>=17]{
            text-placement: 'interior';
            text-dy: 0;
            text-wrap-width: 0;
            text-face-name: @oblique-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-name: '[name]';
        }
    }
    [amenity='pub'],
    [amenity='restaurant'],
    [amenity='cafe'],
    [amenity='fast_food'],
    [amenity='biergarten'] {
                /*3d style*/
        [zoom>16] {
            text-dy: 9;
            text-wrap-width: 34;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
    [amenity='bar'] {
                /*3d style*/
        [zoom>16] {
            text-dy: 11;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
            text-placement: 'interior';
        }
    }
    [amenity='library'],
    [amenity='theatre'],
    [amenity='courthouse'] {
                /*3d style*/
        [zoom>16] {
            text-dy: 12;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
            text-placement: 'interior';
        }
    }
    [amenity='cinema'] {
                /*3d style*/
        [zoom>16] {
            text-dy: 14;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
            text-placement: 'interior';
        }
    }
    [amenity='parking'][access = 'public'],
    [access=''] {
                /*3d style*/
        [zoom > 16] {
            text-dy: 9;
            text-placement: 'interior';
            text-wrap-width: 34;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
            text-placement: 'interior';
        }
    }
    [amenity='parking'][access !='public'],
    [access !=''] {
                /*3d style*/
        [zoom > 16] {
            text-dy: 9;
            text-placement: 'interior';
            text-wrap-width: 34;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(102, 204, 175);
        }
    }
    [amenity='police'] {
                /*3d style*/
        [zoom > 16] {
            text-dy: 10;
            text-placement: 'interior';
            text-wrap-width: 30;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
    [amenity='fire_station'] {
                /*3d style*/
        [zoom > 16] {
            text-dy: 9;
            text-placement: 'interior';
            text-wrap-width: 30;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
    }
    [amenity='place_of_worship'] {
                /*3d style*/
        [zoom > 16] {
            text-dy: 11;
            text-placement: 'interior';
            text-wrap-width: 30;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
    }
    [amenity='embassy'] {
                /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 0;
            text-dy: 9;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
    }
    [amenity='shelter'] {
                /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 10;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
                /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 22;
            text-name: '[ele]';
            text-fill: rgb(102, 153, 204);
        }
    }
    [amenity='bank'] {
                /*3d style*/
        [zoom > 16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 0;
            text-dy: 9;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
    }
    [amenity='fuel'],
    [amenity='bus_station'] {
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
    [amenity='school'],
    [amenity='college'] {
        [zoom>14][zoom < 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 14;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
                /*3d style*/
            [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 14;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
    }
    [amenity='kindergarten'] {
        [zoom>15] [zoom < 17]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-wrap-width: 14;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
         [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-wrap-width: 14;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
    }
    [amenity='hospital'] {
        [zoom>15][zoom<17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-dy: 10;
            text-wrap-width: 24;
            text-name: '[name]';
            text-fill: rgb(218, 0, 146);
        }
    /*3d style*/
            [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-dy: 10;
            text-wrap-width: 24;
            text-name: '[name]';
            text-fill: rgb(218, 0, 146);
        }
    }
    [amenity='pharmacy'] {
        /*3d style*/
        [zoom>16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 9;
            text-wrap-width: 12;
            text-name: '[name]';
            text-fill: rgb(218, 0, 146);
        }
    }
}

#text-natural,#text-poly-natural{
    [natural='wood'] {
        [zoom > 14] [zoom < 17]{
            text-placement: 'interior';
            text-wrap-width: 10;
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
        /*3d style*/
            [zoom >= 17] {
            text-placement: 'interior';
            text-wrap-width: 10;
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='peak'] {
        [zoom > 12][zoom<17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
            /*3d style*/
        [zoom >= 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 9;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='peak'][name=''] {
        [zoom > 13][zoom < 17]  {
            text-placement: 'interior';
            text-dy: 6;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
        }
                /*3d style*/
            [zoom >= 17] {
            text-placement: 'interior';
            text-dy: 6;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='peak'][name !=''] {
        [zoom > 13] [zoom<17]{
            text-placement: 'interior';
            text-dy: 18;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
        }
    /*3d style*/
         [zoom >= 17] {
            text-placement: 'interior';
            text-dy: 18;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='volcano'] {
        [zoom > 12][zoom< 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 5;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
        /*3d style*/
        [zoom >= 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 5;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='volcano'][name=''] {
        [zoom > 13][zoom < 17] {
            text-placement: 'interior';
            text-dy: 6;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
          }
         /*3d style*/
         [zoom >= 17] {
            text-placement: 'interior';
            text-dy: 6;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='volcano'][name !=''] {
        [zoom > 13][zoom < 17] {
            text-placement: 'interior';
            text-dy: 16;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
          }
         /*3d style*/
         [zoom >= 17] {
            text-placement: 'interior';
            text-dy: 16;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-name: '[ele]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='cave_entrance'] {
        [zoom > 14][zoom<17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
        /*3d style*/
        [zoom >= 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
    }
    [natural='water'],
    [natural='lake'][landuse='reservoir'],
    [landuse='basin'] {
        [zoom > 14][zoom<17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
        /*3d style*/
        [zoom >= 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }    
    }
    [natural='bay'] {
        [zoom > 13][zoom<17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
        /*3d style*/
        [zoom >= 17] {
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
        [zoom > 15][zoom < 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 10;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
        /*3d style*/
        [zoom >= 15] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 10;
            text-wrap-width: 20;
            text-name: '[name]';
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
            text-size: 9;
            text-dy: 10;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(102, 153, 204);
        }
        [zoom = 16] {
            text-placement: 'interior';
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 22;
            text-wrap-width: 20;
            text-name: '[ele]';
            text-fill: rgb(102, 153, 204);
        }
            /*3d style*/
        [zoom >= 17] {
            text-placement: 'interior';
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 22;
            text-wrap-width: 20;
            text-name: '[ele]';
            text-fill: rgb(102, 153, 204);
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
        [zoom>14] [zoom<17]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 16;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
        /*3d style*/
        [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-wrap-width: 16;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
    }
  
     [tourism='theme_park'] {
        [zoom>13][zoom<16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 30;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
        }
        /*3d style*/
        [zoom>=16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 30;
            text-name: '[name]';
            text-fill: rgb(115, 74, 8);
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
        [zoom=16] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(153, 51, 153);
        }
        /*3d style*/
        [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-dy: 9;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(153, 51, 153);
        }
    }
}

#text-other, #text-poly-other
{
 [man_made='lighthouse'] {
        [zoom>14] [zoom<17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 8;
            text-dy: 16;
            text-wrap-width: 12;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
        }
        /*3d style*/
        [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 2;
            text-size: 8;
            text-dy: 16;
            text-wrap-width: 12;
            text-name: '[name]';
            text-fill: rgb(0, 0, 51);
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
        [zoom>11] [zoom<17]{
            text-placement: 'interior';
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 9;
            text-wrap-width: 10;
            text-name: '[name]';
            text-fill: rgb(153, 51, 153);
        }
        /*3d style*/
        [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @bold-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 9;
            text-wrap-width: 10;
            text-name: '[name]';
            text-fill: rgb(153, 51, 153);
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
            [zoom > 14] [zoom <17]{
                text-placement: 'interior';
                text-face-name: @book-fonts;
                text-halo-radius: 2;
                text-size: 9;
                text-wrap-width: 20;
                text-name: '[name]';
                text-fill: rgb(102, 153, 204);
            }
             /*3d style*/
             [zoom >= 17] {
                text-placement: 'interior';
                text-face-name: @book-fonts;
                text-halo-radius: 2;
                text-size: 9;
                text-wrap-width: 20;
                text-name: '[name]';
                text-fill: rgb(102, 153, 204);
            }
        }
    }
    [leisure='marina'] {
        [zoom > 14][zoom<17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 30;
            text-size: 8;
            text-name: '[name]';
            text-fill: rgb(0, 0, 255);
        }
        [zoom>=17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 30;
            text-name: '[name]';
            text-fill: rgb(0, 0, 255);
        }
    }
    [historic='memorial'],
    [historic='archaeological_site'] {
        [zoom > 14][zoom < 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 12;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
         /*3d style*/
        [zoom >= 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-size: 9;
            text-dy: 12;
            text-wrap-width: 20;
            text-name: '[name]';
            text-fill: rgb(165, 42, 42);
        }
    }
     [waterway='lock'] {
        [zoom > 14] [zoom<17]{
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 70;
            text-size: 9;
            text-dy: 10;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }
        /*3d style*/
        [zoom >= 17] {
            text-placement: 'interior';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-wrap-width: 70;
            text-size: 9;
            text-dy: 10;
            text-name: '[name]';
            text-fill: rgb(0, 102, 255);
        }    
    }
}
/*verified*/

#roads-text-name {

    [highway='trunk'], [highway='primary'] {
            [zoom>12][zoom<14] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 8;
            text-name: '[name]';
        }
        [zoom>13][zoom<15] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 9;
            text-name: '[name]';
        }
        [zoom>=15][zoom<17] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-name: '[name]';
        }
        [zoom>=17]  {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-name: '[name]';
        }
    }

    [highway='secondary'] {
        [zoom>12][zoom<14] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 8;
            text-halo-radius: 1;
            
            text-name: '[name]';
        }
        [zoom>13][zoom<15] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 9;
            text-halo-radius: 1;
            
            text-name: '[name]';
        }
        [zoom>=15][zoom<17]  {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
        }
        [zoom>=17] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
        }
    }

    [highway='tertiary'] {
        [zoom>14][zoom<17] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 9;
            text-name: '[name]';
        }
            [zoom>=17] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 11;
            text-name: '[name]';
        }
    }

    [highway='proposed'], [highway='construction'] {
        [zoom<17][zoom>12] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 9;
            text-name: '[name]';
        }
        /*3d style*/
        [zoom>=17] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-size: 11;
            text-name: '[name]';
        }
    }

 
    [highway='unclassified'], [highway='residential'] {
        [zoom=15] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-spacing: 300;
            text-size: 8;
            text-halo-radius: 1;
            text-name: '[name]';
        }    
   		 [zoom = 16] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-spacing: 300;
            text-size: 9;
            text-halo-radius: 1;
            text-name: '[name]';
        }
        /*3d style*/
        [zoom>16] {
            text-placement: 'line';
            text-face-name: @book-fonts;
            text-spacing: 400;
            text-size: 11;
            text-halo-radius: 1;
            text-name: '[name]';
        }
    }

    [zoom>14][zoom<17] {
        text-placement: 'line';
        text-face-name: @book-fonts;
        text-spacing: 400;
        text-size: 9;
        text-halo-radius: 1;
        text-name: '[name]';
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
            shield-spacing: 750;
        }
        /*3d style*/
        [zoom>=17] {
            shield-file: 'symbols/mot_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
        }
    }
    [highway='motorway'][length =7] {
        [zoom>12][zoom<12] {
            shield-file: 'symbols/mot_shield6.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill: rgb(255,255,255);
        }
        /*3d style*/
        [zoom>=17] {
            shield-file: 'symbols/mot_shield6.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill: rgb(255,255,255);
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
            shield-fill:rgb(255,255,255);
        }
        /*3d style*/
        [zoom>=17] {
            shield-file: 'symbols/mot_shield7.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
    }
    [highway='trunk'] {
        [zoom>12]  [zoom<17]{
            shield-file: 'symbols/tru_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
       /*3d style*/
        [zoom>=17] {
            shield-file: 'symbols/tru_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
    }
    [highway='primary'] {
        [zoom>12] [zoom<17]  {
            shield-file: 'symbols/pri_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
        /*3d style*/
        [zoom>=17] {
            shield-file: 'symbols/pri_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
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
            shield-fill:rgb(255,255,255);
        }
         /*3d style*/
         [zoom>=17] {
            shield-file: 'symbols/sec_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
    }
    [highway='tertiary'][bridge !='yes'] {
        [zoom>12] [zoom<17]{
            shield-file: 'symbols/ter_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
         [zoom>=17] {
            shield-file: 'symbols/ter_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
    }
    [highway='unclassified'], [highway ='residential'] {
        [bridge !='yes'] {
            [zoom>14] [zoom<17]{
                text-placement: 'line';
                text-min-distance: 18;
                text-name: '[ref]';
                text-face-name: @bold-fonts;
                text-spacing: 750;
                text-fill:rgb(51,51,51);
                text-halo-radius: 1;
            }
           /*3d style*/
           [zoom>14] {
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
            [zoom>14] [zoom<17]{
                text-placement: 'line';
                text-min-distance: 18;
                text-name: '[ref]';
                text-face-name: @bold-fonts;
                text-spacing: 750;
                text-fill:rgb(51,51,51);
                text-halo-radius: 1;
            }
           /*3d style*/
           [zoom>=17] {
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
    
    [zoom>14][zoom<17] {
            text-min-distance: 2;
            text-name: '[name]';
            text-face-name: @oblique-fonts;
            text-size: 11;
            text-dy: -10;
            text-fill:rgb(102,102,255);
            text-halo-radius: 1;
            text-wrap-width: 12;  
    }
       /*3d style*/
      [zoom>=17] {
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
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
        }
    }
    [highway='motorway'][length=7] {
        [zoom>9][zoom<13] {
            shield-file: 'symbols/mot_shield6.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
        }
    }
    [highway='motorway'][length=8] {
        [zoom>9][zoom<13] {
            shield-file: 'symbols/mot_shield7.png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
        }
    }
    [highway='trunk'] {
        [zoom>10][zoom<13] {
            shield-file: 'symbols/tru_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
        }
    }
    [highway='primary'] {
        [zoom>10][zoom<13] {
            shield-file: 'symbols/pri_shield[length].png';
            shield-placement: 'line';
            shield-min-padding: 30;
            shield-name: '[ref]';
            shield-face-name: @bold-fonts;
            shield-spacing: 750;
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
            shield-spacing: 750;
            shield-fill:rgb(255,255,255);
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
            text-face-name: @book-fonts;
            text-size: 13;
            text-halo-radius: 1;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
        }
        [zoom>=14] {
            text-wrap-width: 0;
            text-face-name: @book-fonts;
            text-size: 13;
            text-halo-radius: 1;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
        }
    }
}
.village {
    [place='village'], [place='village'] {
        [zoom>11][zoom<15] {
            text-wrap-width: 0;
            text-face-name: @book-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
        }
        [zoom>=15] {
            text-wrap-width: 0;
            text-face-name: @book-fonts;
            text-size: 12;
            text-halo-radius: 1;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
        }
    }
}
.hamlet {
    [place='suburb'], [place='locality'], [place='isolated_dwelling'], [place='farm'] {
        [zoom>13][zoom<16] {
            text-wrap-width: 0;
            text-face-name: @book-fonts;
            text-size: 8;
            text-halo-radius: 1;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
        }
        [zoom>=16] {
            text-wrap-width: 0;
            text-face-name: @book-fonts;
            text-size: 11;
            text-halo-radius: 1;
            text-fill: rgb(119,119,119);
            text-name: '[name]';
        }
    }
}

.city {
    [place='city'], [place='metropolis'] {

        [zoom>=7][zoom<11] {
            text-wrap-width: 0;
            text-face-name: @book-fonts;
            text-size: 11;
            text-halo-radius: 1;
            text-name: '[name]';
        }
        [zoom>=11][zoom<15] {
            text-wrap-width: 0;
            text-face-name: @book-fonts;
            text-size: 14;
            text-halo-radius: 1;
            text-name: '[name]';
        }
    }
}
.town {
    [place='town'], [place='large_town'], [place='small_town'] {
        [zoom>9][zoom<11] {
            text-wrap-width: 20;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
        }
        [zoom>=11][zoom<14] {
            text-wrap-width: 20;
            text-face-name: @book-fonts;
            text-halo-radius: 1;
            text-name: '[name]';
        }
        [zoom>=14] {
            text-wrap-width: 20;
            text-face-name: @book-fonts;
            text-size: 14;
            text-halo-radius: 1;
            text-name: '[name]';
        }
    }
}
#placenames-capital {
    [zoom=4] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 9;
        text-face-name: @book-fonts;
        text-halo-radius: 1;
        text-name: '[name]';
    }
    [zoom>4][zoom<9] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 11;
        text-face-name: @book-fonts;
        text-halo-radius: 1;
        text-name: '[name]';
    }
    [zoom>=9][zoom<11] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 11;
        text-face-name: @book-fonts;
        text-halo-radius: 1;
        text-name: '[name]';
    }
    [zoom>=11][zoom<15] {
        text-dy: 0;
        text-wrap-width: 0;
        text-size: 14;
        text-face-name: @book-fonts;
        text-halo-radius: 1;
        text-name: '[name]';
    }
}

.country {
    [place='country'] {
        [zoom=3]{
            text-dy: 0;
            text-wrap-width: 20;
            text-face-name:@book-fonts;
            text-halo-radius: 1;
            text-size: 8;
            text-fill: rgb(157,108,157);
            text-name: '[name]';
        }
        [zoom>=4][zoom<7] {
            text-dy: 0;
            text-wrap-width: 20;
            text-face-name:@bold-fonts;
            text-halo-radius: 1;
            text-size: 12;
            text-fill: rgb(157,108,157);
            text-name: '[name]';
        }
    }
}
.state {
    [place='state'] {
        [zoom>=7][zoom<=9] {
            text-dy: 0;
            text-wrap-width: 0;
            text-face-name: @oblique-fonts;
            text-halo-radius: 1;
            text-size: 11;
            text-fill: rgb(157,108,157);
            text-name: '[name]';
        }
    }
}