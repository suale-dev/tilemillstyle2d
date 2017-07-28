#dam{
  [zoom>=13]{
    line-color: rgb(68,68,68);
    line-width: 2;
    line-join: round;
    line-cap: round;
  }
  [zoom>=15][zoom<17]{
    text-face-name: @book-fonts;
    text-size: 8;
    text-halo-radius: 1;
    text-fill: rgb(34,34,34);
    text-name: "[name]";    
  }
  /*3d style*/
  [zoom>=17]{
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
  [zoom=16]{
    line-color: rgb(0,0,255);
    line-width: 2;
    line-opacity: 0.5;
    line-dasharray: 6, 2;
  }
  /*3d style*/
  [zoom>=17]{
    line-color: rgb(0,0,255);
    line-width: 2;
    line-opacity: 0.5;
    line-dasharray: 6, 2;
  }
}
#piers-area{
  [zoom>=12][zoom<17]{
    polygon-fill: rgb(242,239,233);
  }
  /*3d style*/
  [zoom>=17]{
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
    [zoom=16]{
      line-color: rgb(170,170,170);
      line-width: 4;
    }
    /*3d style*/
    [zoom>=17]{
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
    [zoom=16]{
      line-color: rgb(242,239,233);
      line-width: 7;
    }
    /*3d style*/
    [zoom>=17]{
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
  [zoom=16]{
    line-color: rgb(128,128,128);
    line-width: 9;
    line-opacity: 0.8;
    line-join: round;    
  }
   /*3d style*/
  [zoom>=17]{
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
  [zoom=16]{
    line-color: rgb(153,153,153);
    line-width: 2;    
  }
  /*3d style*/
  [zoom>=17]{
    line-color: rgb(153,153,153);
    line-width: 2;    
  }
}
.barriers{
  [barrier='embankment']{
    [zoom>=17]{
      line-color: rgb(68,68,68);
      line-width: 0.4;
    }
    /*3d style*/
    [zoom>=14][zoom<17]{
      line-color: rgb(68,68,68);
      line-width: 0.4;
    }
  }
  [natural='hedge'],[barrier='hedge']{
    [zoom=16]{
      line-color: rgb(174,209,160);
      line-width: 3;
    }
    /*3d style*/
    [zoom>=17]{
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
#buildings-lz{
  [railway='station'],[building='station']{
    [zoom>=10][zoom<17]{
      polygon-fill: rgb(212,170,170);
    }
    [zoom>=17]{
      polygon-fill: rgb(212,170,170);
    }
  }
  
  [building='supermarket'][zoom>=10][zoom<17]{
    polygon-fill: rgb(212,170,170);    
    polygon-opacity: 0.5;
  }
  [building='supermarket'][zoom>=17]{
    polygon-fill: rgb(212,170,170);    
    polygon-opacity: 0.5;
  }
  
  [amenity='place_of_worship']{
    [zoom>=10][zoom<15]{
      polygon-fill: rgb(119,119,119);    
      polygon-opacity: 0.5;    
    }
    [zoom>=15][zoom<17]{
      polygon-fill: rgb(170,170,170);    
      polygon-opacity: 0.9;    
      line-color: rgb(17,17,17);
      line-width: 0.3;
    }
    [zoom>=17]{
      polygon-fill: rgb(170,170,170);    
      polygon-opacity: 0.9;    
      line-color: rgb(17,17,17);
      line-width: 0.3;
    }
  }
}
  
#buildings{
  [building='INT-light'][zoom>=12][zoom<17]{
    polygon-fill: rgb(188,169,169);
    polygon-opacity: 0.7;
  }
  
  [building!='INT-light'][building!=''][zoom>=12][zoom<17]{
    polygon-fill: rgb(188,169,169);
    polygon-opacity:  0.9;
  }

  [building!='INT-light'][building!=''][zoom=16]{
    polygon-fill: rgb(51,0,102);
    polygon-opacity:  0.2;
  }

  [aeroway='terminal'][zoom>=12][zoom<17]{
    polygon-fill: rgb(204,153,255);
  }

  [aeroway='terminal'][zoom>=14][zoom<17]{
    line-color: rgb(51,0,102);
    line-width: 0.2;
  }
}
#ferry-routes{
  [zoom>=7][zoom<11]{
    line-color: rgb(102,102,255);
    line-width: 0.4;
    line-dasharray: 4, 4;
  }
  [zoom>=11][zoom<17]{
    line-color: rgb(102,102,255);
    line-width: 0.8;
    line-dasharray: 6, 6;
  }
  [zoom>=17]{
    line-color: rgb(102,102,255);
    line-width: 0.8;
    line-dasharray: 6, 6;
  }
}
#theme_park[tourism = 'theme_park'] {
    [zoom > 12] [ zoom < 15] {
        line-opacity : 0.6;
        line-width: 1.5;
        line-color :  rgb(115,74,8);
        line-dasharray: 9,3;
    }
    [zoom >= 15][zoom<17] {
        line-opacity : 0.6;
        line-width: 2.5;
        line-color : rgb(115,74,8);
        line-dasharray: 9,3;
    }
    /*3d style*/
    [zoom>=17] {
        line-opacity : 0.6;
        line-width: 2.5;
        line-color : rgb(115,74,8);
        line-dasharray: 9,3;
    }
}
#power_poles {
     [zoom>15][zoom<17] {
        point-allow-overlap: false;
        point-file: 'symbols/power_pole.png';
      }
       /*3d style*/
     [zoom>=17] {
        point-allow-overlap: false;
        point-file: 'symbols/power_pole.png';
    }
}

#power_towers {
    [zoom>13][zoom<15] {
        point-file: 'symbols/power_tower_3x3.png';
        point-allow-overlap: false;
    }
    [zoom>14][zoom<17] {
        point-file: 'symbols/power_tower_5x5.png';
        point-allow-overlap: false;
    }
    [zoom>14][zoom<17] {
        point-file: 'symbols/power_tower_5x5.png';
        point-allow-overlap: false;
    }
    /*3d style*/
    [zoom>16] {
        point-file: 'symbols/power_tower.png';
        point-allow-overlap: false;
    }
}

#power_line {
    [zoom>13][zoom<16] {
        line-width: 1;
        line-color: rgb(119,119,119);
    }
    [zoom=16] {
        line-width: 1.5;
        line-color: rgb(119,119,119);
    }
    /*3d style*/
    [zoom>=17] {
        line-width: 1.5;
        line-color: rgb(119,119,119);
    }
}


#amenity-points, #amenity-points-poly {
    [amenity='shelter'] {
        [zoom>16] {
            point-file: 'symbols/shelter2.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='atm'] {
        [zoom>16] {
            point-file: 'symbols/atm2.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='bank'] {
        [zoom>16] {
            point-file: 'symbols/bank2.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='bar'] {
        [zoom>16] {
            point-file: 'symbols/bar.p.20.png';
            point-placement: 'interior';
        }
    }
    [amenity='bicycle_rental'] {
        [zoom>16] {
            point-file: 'symbols/rental_bicycle.p.20.png';
            point-placement: 'interior';
        }
    }
    [amenity='bus_stop'][highway='bus_stop'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/bus_stop_small.png';
            point-placement: 'interior';
        }
    }
    [amenity='bus_stop'][highway='bus_stop'] {
        [zoom>16] {
            point-file: 'symbols/bus_stop.p.12.png';
            point-placement: 'interior';
        }
    }
    [amenity='bus_station'] {
        [zoom=16] {
            point-file: 'symbols/bus_station.n.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         /*3d style*/
        [zoom>=17] {
            point-file: 'symbols/bus_station.n.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }

    [amenity='cafe'] {
        [zoom>16] {
            point-file: 'symbols/cafe.p.16.png';
            point-placement: 'interior';
        }
    }


    [amenity='car_sharing'] {
        [zoom=16] {
            point-file: 'symbols/car_share.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         /*3d style*/
        [zoom>=17] {
            point-file: 'symbols/car_share.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }

    [amenity='cinema'] {
        [zoom>15] [zoom<17]{
            point-file: 'symbols/cinema.p.24.png';
            point-placement: 'interior';
        }
        /*3d style*/
        [zoom>=17] {
            point-file: 'symbols/cinema.p.24.png';
            point-placement: 'interior';
        }
    }
    [amenity='fire_station'] {
         [zoom>15] [zoom<17]{
            point-file: 'symbols/firestation.p.16.png';
            point-placement: 'interior';
         }
         /*3d style*/
         [zoom>=17] {
            point-file: 'symbols/firestation.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='fuel'] {
        [zoom>15] {
            point-file: 'symbols/fuel.p.16.png';
            point-placement: 'interior';
        }
         /*3d style*/
        [zoom>=17] {
            point-file: 'symbols/fuel.p.16.png';
            point-placement: 'interior';
        }
    }

    [amenity='hospital'] {
        [zoom>14][zoom<17] {
            point-file: 'symbols/hospital.p.16.png';
            point-placement: 'interior';
        }
         /*3d style*/
        [zoom>=14] {
            point-file: 'symbols/hospital.p.16.png';
            point-placement: 'interior';
        }
    }

    [amenity='embassy'] {
         /*3d style*/
        [zoom>16] {
            point-file: 'symbols/embassy.png';
            point-placement: 'interior';
        }
    }
    [amenity='library'] {
         /*3d style*/
        [zoom>16] {
            point-file: 'symbols/library.p.20.png';
            point-placement: 'interior';
        }
    }
    [amenity='courthouse'] {
         /*3d style*/
        [zoom>16] {
            point-file: 'symbols/amenity_court.p.20.png';
            point-placement: 'interior';
        }
    }


    [amenity='parking'][access='public'], [access=''], [access='yes'] {
        [zoom>14][zoom<17] {
            point-file: 'symbols/parking.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         /*3d style*/
         [zoom>=17] {
            point-file: 'symbols/parking.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [amenity='parking'][access!=''][access!='public'][access!='yes'] {
        [zoom>14][zoom<17] {
            point-file: 'symbols/parking_private.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         /*3d style*/
        [zoom>=17]{
            point-file: 'symbols/parking_private.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [amenity='pharmacy'] {
         /*3d style*/
        [zoom>16] {
            point-file: 'symbols/pharmacy.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='place_of_worship'][religion='christian'] {
        [zoom=16] {
            point-file: 'symbols/christian3.p.14.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         [zoom>=17] {
            point-file: 'symbols/christian3.p.14.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [amenity='place_of_worship'][religion='muslim'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/islamic3.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         /*3d style*/
        [zoom>=17] {
            point-file: 'symbols/islamic3.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [amenity='place_of_worship'][religion='sikh3'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/sikh3.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         /*3d style*/
         [zoom>=17] {
            point-file: 'symbols/sikh3.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [amenity='place_of_worship'][religion='jewish'] {
        [zoom=16] {
            point-file: 'symbols/jewish3.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [amenity='place_of_worship'] {
        [zoom=16] {
            point-file: 'symbols/place_of_worship3.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
         /*3d style*/
        [zoom=16] {
            point-file: 'symbols/place_of_worship3.p.16.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [amenity='police'] {
        [zoom=16] {
            point-file: 'symbols/police.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='post_box'] {
        [zoom=16] {
            point-file: 'symbols/post_box.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='post_office'] {
         /*3d style*/
        [zoom=16] {
            point-file: 'symbols/post_office.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='pub'] {
         /*3d style*/
        [zoom=1] {
            point-file: 'symbols/pub.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='biergarten'] {
        [zoom>15] [zoom<17]{
            point-file: 'symbols/biergarten.p.16.png';
            point-placement: 'interior';
        }
         /*3d style*/
        [zoom=16] {
            point-file: 'symbols/biergarten.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='recycling'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/recycling.p.16.png';
            point-placement: 'interior';
        }
         /*3d style*/
        [zoom=17] {
            point-file: 'symbols/recycling.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='restaurant'] {
        [zoom=16] {
            point-file: 'symbols/restaurant.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='fast_food'] {
         /*3d style*/
        [zoom=16] {
            point-file: 'symbols/fast_food.png';
            point-placement: 'interior';
        }
    }
    [amenity='telephone'] {
         /*3d style*/
        [zoom=16] {
            point-file: 'symbols/telephone.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='emergency_phone'] {
         /*3d style*/
        [zoom=6] {
            point-file: 'symbols/sosphone.png';
            point-placement: 'interior';
        }
    }
    [amenity='theatre'] {
         /*3d style*/
        [zoom=16] {
            point-file: 'symbols/theatre.p.20.png';
            point-placement: 'interior';
        }
    }
    [amenity='toilets'] {
         /*3d style*/
        [zoom>=16] [zoom<17]{
            point-file: 'symbols/toilets.p.20.png';
            point-placement: 'interior';
        }
    }
    [amenity='drinking_water'] {
         /*3d style*/
        [zoom>=16] [zoom<17]{
            point-file: 'symbols/food_drinkingtap.p.20.png';
            point-placement: 'interior';
        }
    }
    [amenity='prison'] {
        [zoom>15] [zoom<17]{
            point-file: 'symbols/amenity_prison.p.20.png';
            point-placement: 'interior';
        }
         /*3d style*/
         [zoom>=15][zoom<17] {
            point-file: 'symbols/amenity_prison.p.20.png';
            point-placement: 'interior';
        }
    }
    [amenity='viewpoint'] {
        [zoom>15] [zoom<17]{
            point-file: 'symbols/view_point.p.16.png';
            point-placement: 'interior';
        }     
        /*3d style*/
        [zoom>=15][zoom<17] {
            point-file: 'symbols/view_point.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='veterinary'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/amenity_veterinary.p.16.png';
            point-placement: 'interior';
        }
         /*3d style*/
        [zoom>=16][zoom<17] {
            point-file: 'symbols/amenity_veterinary.p.16.png';
            point-placement: 'interior';
        }
    }
    [amenity='bench'] {
         /*3d style*/
        [zoom>15][zoom<17] {
            point-file: 'symbols/amenity_bench.p.8.png';
            point-placement: 'interior';
        }
    }
    [amenity='waste_basket'] {
         /*3d style*/
        [zoom>15][zoom<17] {
            point-file: 'symbols/amenity_waste_basket.p.8.png';
            point-placement: 'interior';
        }
    }
    [amenity='picnic_site'] {
         /*3d style*/
        [zoom>=16][zoom<17] {
            point-file: 'symbols/picnic.p.16.png';
            point-placement: 'interior';
        }
    }

}
#amenity-points-other, #amenity-points-poly-other{
    [man_made='water_tower'] {
        [zoom>=16][zoom<17] {
            point-file: 'symbols/tower_water.p.20.png';
            point-placement: 'interior';
        }
    }
    [historic='memorial'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/tourist_memorial.p.20.png';
            point-placement: 'interior';
        }
    }
    [historic='archaeological_site'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/tourist_archaeological2.glow.16.png';
            point-placement: 'interior';
        }
    }
    
    [leisure='playground'] {
        [zoom>=16][zoom<17] {
            point-file: 'symbols/playground.p.20.png';
            point-placement: 'interior';
        }
    }

    [leisure='slipway'] {
        [zoom>=16][zoom<17] {
            point-file: 'symbols/transport_slipway.p.20.png';
            point-placement: 'interior';
        }
    }
    [highway='traffic_signals'] {
        [zoom>=16][zoom<17] {
            point-file: 'symbols/traffic_light.png';
            point-placement: 'interior';
        }
    }
  
     [highway='ford'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/transport_ford.p.16.png';
            point-placement: 'interior';
        }
    }
    [waterway = 'lock'], [lock = 'yes'] {
        [zoom > 14][zoom<17] {
            point-file: 'symbols/lock_gate.png';
            point-placement: 'interior';
        }
    }
    [man_made='mast'] {
        [zoom>16] [zoom<17]{
            point-file: 'symbols/communications.p.20.png';
            point-placement: 'interior';
        }
    }
}
#amenity-points-shop, #amenity-points-poly-shop{
  
    [shop='supermarket'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/shop_supermarket.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='bakery'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_bakery.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='bicycle'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shopping_bicycle.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='books'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_books.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='butcher'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_butcher.png';
            point-placement: 'interior';
        }
    }
    [shop='car'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shopping_car.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='car_repair'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shopping_car_repair.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='clothes'], [shop='fashion'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_clothes.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='computer'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_computer.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='convenience'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_convenience.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='department_store'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/department_store.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='doityourself'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_diy.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='dry_cleaning'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_dry_cleaning.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='florist'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/florist.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='gift'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_gift.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='greengrocer'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_greengrocer.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='hairdresser'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_hairdresser.p.16.png';
            point-placement: 'interior';
        }
    }
    [shop='jewelry'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_jewelry.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='mobile_phone'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_mobile_phone.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='optician'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_optician.p_16.png';
            point-placement: 'interior';
        }
    }
    [shop='pet'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/shop_pet.p_16.png';
            point-placement: 'interior';
        }
    }
} 

#amenity-points-tourism, #amenity-points-poly-tourism  {
    [tourism='caravan_site'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/caravan_park.p.24.png';
            point-placement: 'interior';
        }
    }
    [tourism='camp_site'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/camping.n.16.png';
            point-placement: 'interior';
        }
    }
    [tourism='chalet'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/chalet.p.16.png';
            point-placement: 'interior';
        }
    }
    [tourism='guest_house'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/guest_house.p.16.png';
            point-placement: 'interior';
        }
    }
    [tourism='bed_and_breakfast'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/bandb.p.20.png';
            point-placement: 'interior';
        }
    }
    [tourism='museum'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/museum.p.16.png';
            point-placement: 'interior';
        }
    }
    [tourism='alpine_hut'] {
        [zoom>12][zoom<17] {
            point-file: 'symbols/alpinehut.p.16.png';
            point-placement: 'interior';
        }
    } 
    [tourism='hostel'] {
        [zoom>14][zoom<17] {
            point-file: 'symbols/hostel.p.20.png';
            point-placement: 'interior';
        }
    }
    [tourism='hotel'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/hotel2.p.20.png';
            point-placement: 'interior';
        }
    }
    [tourism='motel'] {
        [zoom>16][zoom<17] {
            point-file: 'symbols/motel.p.20.png';
            point-placement: 'interior';
        }
    }
    [tourism='information'] {
        [zoom>15][zoom<17] {
            point-file: 'symbols/information.p.16.png';
            point-placement: 'interior';
        }
    }
}
#amenity-symbols-poly-man-made, #amenity-symbols-man-made
{
    [power='generator']['generator:source' ='wind'], [power ='generator'][power_source ='wind'], [power ='generator'][man_made ='power_wind']  {
        [zoom = 14][zoom<17] {
            point-file: 'symbols/power_wind.png';
            point-placement: 'interior';
        }
    }
    [man_made ='windmill'] {
        [zoom > 15][zoom<17] {
            point-file: 'symbols/windmill.png';
            point-placement: 'interior';
        }
    }
    [man_made ='mast'] {
        [zoom > 16][zoom<17] {
            point-file: 'symbols/communications.p.20.png';
            point-placement: 'interior';
        }
    }
   
    [man_made ='lighthouse'] {
        [zoom > 14][zoom<17] {
            point-file: 'symbols/lighthouse.p.20.png';
            point-placement: 'interior';
        }
    }
    [highway ='mini_roundabout'] {
        [zoom > 14][zoom<17] {
            point-file: 'symbols/mini_round.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [highway ='gate'][barrier ='gate'] {
        [zoom > 14][zoom<17] {
            point-file: 'symbols/gate2.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [barrier ='lift_gate'] {
        [zoom > 15][zoom<17] {
            point-file: 'symbols/liftgate.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [barrier ='bollard'], [barrier ='block'] {
        [zoom > 15][zoom<17] {
            point-file: 'symbols/bollard.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [railway ='level_crossing'] {
        [zoom <16 ][zoom>13] {
            point-file: 'symbols/level_crossing.png';
            point-placement: 'interior';
        }
        [zoom >15][zoom<17] {
            point-file: 'symbols/level_crossing2.png';
            point-placement: 'interior';
        }
    }
}
#amenity-stations-poly, #amenity-stations {
    [railway ='subway_entrance'] {
        [zoom > 17][zoom<17] {
            point-file: 'symbols/walking.n.12.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [railway ='station'][disused!='yes'] {
        [zoom = 12] {
            point-file: 'symbols/halt.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
        [zoom > 12][zoom<15] {
            point-file: 'symbols/station_small.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
        [zoom > 14][zoom<17] {
            point-file: 'symbols/station.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [railway ='station'][disused ='yes'] {
        [zoom > 12][zoom<17] {
            point-file: 'symbols/station_disused.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
    }
    [railway ='halt'], [railway ='tram_stop'], [aerialway ='station'] {
        [zoom > 12][zoom<15] {
            point-file: 'symbols/halt.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
        [zoom > 14] {
            point-file: 'symbols/station_small.png';
            point-placement: 'interior';
            point-allow-overlap: false;
        }
        [zoom=14] {
            text-placement: 'interior';
            text-dy: -8;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-fill: rgb(102,102,255);
            text-name: '[name]';
        }
    }
    [railway ='station'][disused!='yes'] {
        [zoom=14] {
            text-placement: 'interior';
            text-dy: -8;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-fill: rgb(102,102,255);
            text-name: '[name]';
        }
        [zoom>14] {
            text-placement: 'interior';
            text-dy: -9;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-fill: rgb(128,128,128);
            text-name: '[name]';
        }
    }
    [railway ='station'][disused ='yes'] {
        [zoom>14] [zoom<17]{
            text-placement: 'interior';
            text-dy: -9;
            text-wrap-width: 0;
            text-face-name: @bold-fonts;
            text-size: 9;
            text-halo-radius: 1;
            text-fill: rgb(128,128,128);
            text-name: '[name]';
        }
    }
}
