#tunnels{
  ::casing{
    [highway='motorway'],[highway='motorway_link']{
      [zoom=12]{
        line-color: @roadCase;
        line-width: 3;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @roadCase;
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=15]{
        line-color: @roadCase;
        line-width: 7;
        line-dasharray: 4, 2;
      }
    }
    [highway='trunk'],[highway='trunk_link']{
      [zoom=12]{
        line-color: @primaryroadCase;
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @primaryroadCase;
        line-width: 5;
        line-dasharray: 4, 2;
      }
      [zoom>=15]{
        line-color: @primaryroadCase;
        line-width: 8;
        line-dasharray: 4, 2;
      }
    }
    [highway='primary'],[highway='primary_link']{
      [zoom=12]{
        line-color: @roadCase;
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @roadCase;
        line-width: 5;
        line-dasharray: 4, 2;
      }
      [zoom>=15]{
        line-color: @roadCase;
        line-width: 8;
        line-dasharray: 4, 2;
      }
    }
    [highway='secondary'],[highway='secondary_link']{
      [zoom=12]{
        line-color: @roadCase;
        line-width: 3;
        line-dasharray: 4, 2;
      }
      [zoom>=13][zoom<15]{
        line-color: @roadCase;
        line-width: 4;
        line-dasharray: 4, 2;
      }
      [zoom>=15]{
        line-color: @roadCase;
        line-width: 7;
        line-dasharray: 4, 2;
      }
    }
    [highway='tertiary'],[highway='tertiary_link']{
      [zoom=13]{
        line-color: @roadCase;
        line-width: 3;
        line-dasharray: 4, 2;
      }
      [zoom=14]{
        line-color: @roadCase;
        line-width: 3.5;
        line-dasharray: 4, 2;
      }
      [zoom>=15]{
        line-color: @roadCase;
        line-width: 6;
        line-dasharray: 4, 2;       
      }
    }
    [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: @roadCase;
        line-width: 1;
        line-dasharray: 4, 2;
      }
      [zoom>=14][zoom<16]{
        line-color: @roadCase;
        line-width: 2.5;
        line-dasharray: 4, 2;
      }
      [zoom>=16]{
        line-color: @roadCase;
        line-width: 5.5;
        line-dasharray: 4, 2;
      }
    }
  }
  ::fill{
    [highway='motorway'],[highway='motorway_link']{
      [zoom=12]{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
    }
    [highway='trunk'],[highway='trunk_link']{
      [zoom=12]{
        line-color: @primaryroad;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @primaryroad;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15]{
        line-color: @primaryroad;
        line-width: 6;
        line-join: round;
        line-cap: round;
      }   
    }
    [highway='primary'],[highway='primary_link']{
      [zoom=12]{
        line-color: @road;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 6;
        line-join: round;
        line-cap: round;
      }   
    }
    [highway='secondary'],[highway='secondary_link']{
      [zoom=12]{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;
      }  
    }
    [highway='tertiary'],[highway='tertiary_link']{
      [zoom=13]{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
      [zoom=14]{
        line-color: @road;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
    }
   [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom>=14][zoom<16]{
        line-color: @road;
        line-width: 1.5;
        line-join: round;
        line-cap: round;
      }
      [zoom>=16]{
        line-color: @road;
        line-width: 4;
        line-join: round;
        line-cap: round;        
      }
    }
  }
}
#turning_circle-casing{
  [int_tc_type='tertiary']{
    [zoom>=15]{
      point-file: url("symbols/turning_circle-tert-casing.18.png");
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
    [zoom>=16]{
      point-file: url("symbols/turning_circle-uncl-casing.18.png");
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
    [zoom>=16]{
      point-file: url("symbols/turning_circle-uncl-fill.18.png");
      point-allow-overlap: true;
      point-ignore-placement: true;    
    }
  }
  [int_tc_type='service']{
    [zoom>=16]{
      point-file: url("symbols/turning_circle-uncl-casing.14.png");
      point-allow-overlap: true;
      point-ignore-placement: true;        
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
      line-color: @roadCase;
      line-width: 3;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @roadCase;
      line-width: 4;
      line-join: round;
    }
    [zoom>=15]{
      line-color: @roadCase;
      line-width: 7;
      line-join: round;      
    }
  }
  [highway='trunk'][tunnel!='yes']{
    [zoom=12]{
      line-color: @primaryroadCase;
      line-width: 4;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @primaryroadCase;
      line-width: 5;
      line-join: round;
    }
    [zoom>=15]{
      line-color: @primaryroadCase;
      line-width: 8;
      line-join: round;  
    }
  }
  [highway='primary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @roadCase;
      line-width: 4;
      line-join: round;      
    }
    [zoom>=13][zoom<15]{
      line-color: @roadCase;
      line-width: 5;
      line-join: round;      
    }
    [zoom>=15]{
      line-color: @roadCase;
      line-width: 8;
      line-join: round;      
    }
  }
  [highway='secondary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @roadCase;
      line-width: 3;
      line-join: round;  
      line-cap: round;          
    }
    [zoom>=13][zoom<15]{      
      line-color: @roadCase;
      line-width: 4;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15]{
      line-color: @roadCase;
      line-width: 7;
      line-join: round;  
      line-cap: round; 
    }
  }
  [highway='tertiary'][tunnel!='yes']{
    [zoom=13]{      
      line-color: @roadCase;
      line-width: 3;
      line-join: round;  
      line-cap: round; 
    }
    [zoom=14]{
      line-color: @roadCase;
      line-width: 3.5;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15]{
      line-color: @roadCase;
      line-width: 6;
      line-join: round;  
      line-cap: round; 
    }
  }
  [tunnel!='yes']{
    [highway='residential'],[highway='unclassified'],[highway='road']{
      [zoom=13]{
        line-color: @roadCase;
        line-width: 1;
        line-join: round;
        line-cap: round;
      }
      [zoom>=14][zoom<16]{
        line-color: @roadCase;
        line-width: 2.5;
        line-join: round;
        line-cap: round;      
      }
      [zoom>=16]{
        line-color: @roadCase;
        line-width: 5.5;
        line-join: round;
        line-cap: round;         
      }
    }
  }
  [highway='service'][tunnel!='yes']{
    [zoom=15]{
      line-color: @roadCase;
      line-width: 2.5;
      line-join: round;
      line-cap: round;
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-width: 5;
      line-join: round;
      line-cap: round;         
    }
  }
  [highway='service'][tunnel='yes']{
    [zoom=15]{
      line-color: @roadCase;
      line-color: 2.5;
      line-dasharray: 4, 2;
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-color: 5;
      line-dasharray: 4, 2;
    }
  }
  [highway='pedestrian'][tunnel!='yes']{
    [zoom>=14][zoom<16]{
      line-color: @roadCase;
      line-width: 2;
      line-join: round;
      line-cap: round;       
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-width: 5;
      line-join: round;
      line-cap: round;        
    }
  }
  [highway='pedestrian'][tunnel='yes']{
    [zoom=14][zoom<16]{
      line-color: @roadCase;
      line-width: 2;
      line-dasharray: 4, 2;
    }
    [zoom>=16]{
      line-color: @roadCase;
      line-width: 5;
      line-dasharray: 4, 2;
    }
  }
  [highway='living_street']{
    [zoom=14]{
      line-color: @roadCase;
      line-width: 2;
      line-join: round;
      line-cap: round;
    }
    [zoom>=15]{
      line-color: @roadCase;
      line-width: 5;
      line-join: round;
      line-cap: round;
    }
  }  
}

#minor-roads-fill{
  ::links{
    [highway='motorway'][tunnel!='yes']{
      [zoom=12]{
        line-color: @road;
        line-width: 2;
        line-join: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 3;
        line-join: round;
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 5;
        line-join: round;      
      }
    }
    [highway='trunk_link'][tunnel!='yes']{
      [zoom=12]{
        line-color: @primaryroad;
        line-width: 2.5;
        line-join: round;
        line-cap: round; 
      }
      [zoom>=13][zoom<15]{
        line-color:  @primaryroad;
        line-width: 3;
        line-join: round;
        line-cap: round; 
      }
      [zoom>=15]{
        line-color:  @primaryroad;
        line-width: 6;
        line-join: round;
        line-cap: round; 
      }
    }
    [highway='primary_link'][tunnel!='yes']{
      [zoom=12]{
        line-color: @road;
        line-width: 2.5;
        line-join: round; 
        line-cap: round;
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 3;
        line-join: round; 
        line-cap: round;
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 6;
        line-join: round; 
        line-cap: round;
      }
    }
    [highway='secondary_link'][tunnel!='yes']{
      [zoom=12]{
        line-color: @road;
        line-width: 2;
        line-join: round;  
        line-cap: round; 
      }
      [zoom>=13][zoom<15]{
        line-color: @road;
        line-width: 3;
        line-join: round;  
        line-cap: round; 
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 5;
        line-join: round;  
        line-cap: round; 
      }
    }
    [highway='tertiary_link'][tunnel!='yes']{
      [zoom=13]{
        line-color: @road;
        line-width: 2;
        line-join: round;  
        line-cap: round; 
      }
      [zoom=14]{
        line-color: @road;
        line-width: 2.5;
        line-join: round;  
        line-cap: round; 
      }
      [zoom>=15]{
        line-color: @road;
        line-width: 5;
        line-join: round;  
        line-cap: round; 
      }
    }
  }
  [highway='construction'][zoom>=16]{
    ::case{
      line-color: @roadCase;
      line-width: 5;
      line-join: round;
    }
    ::fill{
      line-color: @road;
      line-width: 4;
      line-join: round;
      line-dasharray: 8, 6;
    }
  }
  [highway='motorway'][tunnel!='yes']{
    [zoom=12]{
      line-color: @road;
      line-width: 2;
      line-join: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @road;
      line-width: 4;
      line-join: round;
    }
    [zoom>=15]{
      line-color: @road;
      line-width: 5;
      line-join: round;      
    }
  }
  [highway='trunk'][tunnel!='yes']{
    [zoom=12]{
      line-color: @primaryroad;
      line-width: 2.5;
      line-join: round;
      line-cap: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @primaryroad;
      line-width: 3;
      line-join: round;
      line-cap: round;
    }
    [zoom>=15]{
      line-color: @primaryroad;
      line-width: 6;
      line-join: round;
      line-cap: round;
    }
  }
  [highway='primary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @road;
      line-width: 3;
      line-join: round; 
      line-cap: round;
    }
    [zoom>=13][zoom<15]{
      line-color: @road;
      line-width: 3;
      line-join: round; 
      line-cap: round;
    }
    [zoom>=15]{
      line-color: @road;
      line-width: 6;
      line-join: round; 
      line-cap: round;
    }
  }
  [highway='secondary'][tunnel!='yes']{
    [zoom=12]{
      line-color: @road;
      line-width: 2;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=13][zoom<15]{
      line-color: @road;
      line-width: 3;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15]{
      line-color: @road;
      line-width: 5;
      line-join: round;  
      line-cap: round; 
    }
  }
  [highway='tertiary'][tunnel!='yes']{
    [zoom=13]{
      line-color: @road;
      line-width: 2;
      line-join: round;  
      line-cap: round; 
    }
    [zoom=14]{
      line-color: @road;
      line-width: 2.5;
      line-join: round;  
      line-cap: round; 
    }
    [zoom>=15]{
      line-color: @road;
      line-width: 5;
      line-join: round;  
      line-cap: round; 
    }
  }
  [highway='residential'],[highway='unclassified'],[highway='road']{
    [zoom>=14][zoom<16]{
      line-color: @road;
      line-width: 1.5;
      line-join: round;
      line-cap: round; 
    }
    [zoom>=16]{
      line-color: @road;
      line-width: 4;
      line-join: round;
      line-cap: round; 
    }
  }
  [highway='pedestrian']{
    [zoom>=16]{
      line-color: @road;
      line-width: 4;
      line-join: round;
      line-cap: round;        
    }
  }
  [highway='living_street']{
    [zoom>=15]{
      line-color: @road;
      line-width: 4;
      line-join: round;        
      line-cap: round;
    }
  }
  [highway='service']{
    [zoom=15]{
      line-color: @road;
      line-color: 1;
      line-join: round;
      line-cap: round;     
    }
    [zoom>=16]{
      line-color: @road;
      line-width: 4;
      line-join: round;
      line-cap: round;         
    }
  }
}

#minor-roads-fill-railway{
  [railway='rail'][tunnel='yes']{
    [zoom>=13]{
      line-color: @railway;
      line-width: 3;
      line-join: round;
      line-dasharray: 6, 4;
    }
  }
  [railway='disused'][highway=''],[railway='abandoned'][highway=''],[railway='construction'][highway='']{
    [zoom>=13]{
      line-color: rgb(128,128,128);
      line-width: 2;
      line-join: round;
      line-dasharray: 2, 4;
    }
  }
  [railway='rail'][tunnel!='yes']{
    [zoom=13]{
      ::case{
        line-color: @railway;
        line-width: 3;
        line-join: round;
      }
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 8, 12;
      }
    }
  }
  [railway='rail'][tunnel!='yes']{
    [zoom>=14]{
      ::case{
        line-color: @railway;
        line-width: 3;
        line-join: round;
      }
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 0, 11,8, 1;
      }
    }   
  }
  [railway='spur-siding-yard']{
    [zoom>=11][zoom<13]{
      line-color:rgb(170,170,170);
      line-width: 1;
      line-join: round; 
    }
  }
  [railway='spur-siding-yard'][tunnel='yes']{
    [zoom>=13]{
      line-color: @railway;
      line-opacity: 0.7;
      line-width: 2;
      line-join: round;
      line-dasharray: 6, 4;
    }
  }
  [railway='spur-siding-yard'][tunnel!='yes']{
    [zoom>=13]{
      ::case{
        line-color: @railway;
        line-width: 2;
        line-join: round;
        line-opacity: 0.7
      }
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 0.8;
        line-join: round;
        line-dasharray: 0, 11,8, 1;
      }
    }
  }
  [railway='narrow_gauge'][tunnel!='yes'],[railway='funicular'][tunnel!='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
    }
  }
  [railway='narrow_gauge'][tunnel='yes'],[railway='funicular'][tunnel='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
      line-dasharray: 2, 4;
    }
  }
  [railway='miniature']{
    [zoom>=15]{
      ::case{
        line-color: @railway;
        line-width: 3;
      }
      ::dash{
        line-color: @railway;
        line-width: 1.2;
        line-dasharray: 1, 10;
      }
    }
  }
  [railway='tram'][tunnel='yes']{
    [zoom>=13][zoom<15]{
      line-color: rgb(68,68,68);
      line-width: 1;
      line-dasharray: 5, 3;
    }
    [zoom>=15]{
      line-color: rgb(68,68,68);
      line-width: 2;
      line-dasharray: 5, 3;      
    }
  }
  [railway='light_rail'][tunnel='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
      line-dasharray: 5, 3;
    }
  }
  [railway='light_rail'][tunnel!='yes']{
    [zoom>=13]{
      line-color: rgb(102,102,102);
      line-width: 2;
    }
  }
  [railway='subway'][tunnel='yes']{
    [zoom>=12]{
      line-color: @railway;
      line-width: 2;
      line-dasharray: 5, 3;
    }
  }
  [railway='subway'][tunnel!='yes']{
    [zoom>=12]{
      line-color: @railway;
      line-width: 2;
    }
  }
  [aeroway='runway'][bridge!='yes']{
    [zoom>=14]{
      line-color: rgb(187,187,204);
      line-width: 18;
    }
  }
  [aeroway='taxiway']{
    [zoom>=11][zoom<14]{
      line-color: rgb(187,187,204);
      line-width: 1;
    }
  }
  [aeroway='taxiway'][bridge!='yes']{
    [zoom=14]{
      line-color: rgb(187,187,204);
      line-width: 4;
    }
    [zoom>=15]{
      line-color: rgb(187,187,204);
      line-width: 6;
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
#tracks-notunnel-nobridge{
  [zoom=13],[zoom>=14][tracktype!='grade1'][tracktype!='grade2'][tracktype!='grade3'][tracktype!='grade4'][tracktype!='grade5']{
    ::dash{
      line-color: rgb(153,102,0);
      line-width: 1.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 3,4;
    }
    ::line{
      line-color: rgb(255,255,255);
      line-width: 3;
      line-opacity: 0.4;
      line-join: round;
      line-cap: round;      
    }
  }
  [tracktype='grade1']{
    [zoom>=14]{
      ::dash{
        line-color: rgb(179,119,0);
        line-width: 2;
        line-opacity: 0.7;
      }
      line-color: rgb(255,255,255);
      line-width: 3.5;
      line-opacity: 0.4;
    }
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
}
#turning_circle-fill{
  [int_tc_type='tertiary']{
    [zoom>=15][zoom<17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-tert-fill.16.png");
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-tert-fill.22.png");
    }
  }
  [int_tc_type='residential'],[int_tc_type='unclassified']{
    [zoom=15]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.12.png");
    }
    [zoom=16]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.16.png");      
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.22.png"); 
    }
  }
  [int_tc_type='living_street']{
    [zoom=15]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-livs-fill.12.png");      
    }
    [zoom=16]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-livs-fill.22.png");   
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.14.png");       
    }
  }
  [int_tc_type='service']{
    [zoom=16]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.12.png");       
    }
    [zoom>=17]{
      point-allow-overlap: true;
      point-ignore-placement: true;
      point-file: url("symbols/turning_circle-uncl-fill.14.png");       
    }
  }
}
#aerialways{
  [aerialway='cable_car'],[aerialway='gondola'],[aerialway='goods']{
    [zoom>=12]{
      line-pattern-file: url("symbols/cable_car.png");
    }
  }
  [aerialway='chair_lift'],[aerialway='drag_lift'],[aerialway='t-bar'],[aerialway='j-bar'],[aerialway='platter'],[aerialway='rope_tow']{
    [zoom>=12]{
      line-pattern-file: url("symbols/chair_lift.png");      
    }
  }
}
#roads-highway{
  [highway='motorway'],[highway='motorway_link']{
    [zoom>=5][zoom<7]{
      ::case{
      	line-color: @road;
      	line-width: 0.5;
      }
      ::fill{
      	line-color: @road;
      	line-width: 0.5;
      }
    }
    [zoom>=7][zoom<9]{
      ::case{
        line-color: @road;
        line-width: 0.7;
      }
      ::fill{
        line-color: @road;
        line-width: 0.7;
      }
    }
    [zoom=9]{
      ::case{
        line-color: @roadCase;
        line-width: 2.5;
      }
      ::fill{
        line-color: @road;
        line-width: 1;
      }
    }
    [zoom=10]{
      ::case{
        line-color: @roadCase;
        line-width: 2.5;
      }
      ::fill{
        line-color: @road;
        line-width: 1;
      }
    }
    [zoom=11]{
      ::case{
        line-color: @roadCase;
        line-width: 3.5;
      }
      ::fill{
        line-color: @road;
        line-width: 2.5;
      }
    }
  }
  [highway='trunk'],[highway='trunk_link']{
    [zoom>=5][zoom<7]{
      ::case{
        line-color: @primaryroad-lowzoom;
        line-width: 0.5;
      }
      ::fill{
        line-color: @primaryroad-lowzoom;
        line-width: 0.5;
      }
    }
    [zoom>=7][zoom<9]{
      ::case{
        line-color: @primaryroad-lowzoom;
        line-width: 0.7;
      }
      ::fill{
        line-color: @primaryroad-lowzoom;
        line-width: 0.7;
      }
    }
    [zoom>=9][zoom<11]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 2.5;
      }
      ::fill{
        line-color: @primaryroad;
        line-width: 1;
      }
    }    
    [zoom=11]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 3.5;
      }
      ::fill{
        line-color: @primaryroad;
        line-width: 2.5;
      }
    }
  }
  [highway='primary'],[highway='primary_link']{
    [zoom=9]{
      line-color: @road;
      line-width: 1.2;
    }
    [zoom=10]{
      ::case{
        line-color: @roadCase;
        line-width: 2.5
      }
      ::fill{
        line-color: @road;
        line-width: 1.5;
      }
    }
    [zoom=11]{
      ::case{
        line-color: @roadCase;
        line-width: 3.5
      }
      ::fill{
        line-color: @road;
        line-width: 2.5
      }
    }
  }
}
#roads-railway{
  [railway='rail']{
    [zoom>=6][zoom<9]{
      line-color: rgb(170,170,170);
      line-width: 0.6;
    }
  }
  [railway='rail'][tunnel!='yes']{
    [zoom=9]{
      line-color: rgb(170,170,170);
      line-width: 1;
    }
    [zoom>=10][zoom<13]{
      line-color: rgb(170,170,170);
      line-width: 2;
    }
  }
  [railway='rail'][tunnel='yes']{
    [zoom=9]{
      line-color: rgb(170,170,170);
      line-width: 1;
      line-dasharray: 5, 2;
    }
    [zoom>=10][zoom<13]{
      line-color: rgb(170,170,170);
      line-width: 2;
      line-dasharray: 5, 2;
    }
  }
  [railway='tram'],[railway='light_rail'],[railway='narrow_gauge'],[railway='funicular']{
    [zoom>=8][zoom<10]{
      line-color: rgb(204,204,204);
      line-width: 1;
    }
    [zoom>=10][zoom<13]{
      line-color: rgb(170,170,170);
      line-width: 1;
    }
  }
  [railway='preserved']{
    [zoom=12]{
      line-color: rgb(170,170,170);
      line-width: 1.5;
      line-join: round;
    }
    [zoom>=13]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 0, 1, 8, 1;
      }
      line-color: rgb(153,153,153);
      line-width: 3;
      line-join: round;
    }
  }
  [railway='INT-preserved-ssy']{
    [zoom=12]{
      line-color: rgb(170,170,170);
      line-width: 1;
      line-join: round;
    }
    [zoom>=13]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 0.8;
        line-join: round;
        line-dasharray: 0, 1, 8, 1;
      }
      line-color: rgb(153,153,153);
      line-width: 2;
      line-join: round;
    }
  }
  [railway='monorail']{
    [zoom>=14]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-opacity: 0.4;
        line-join: round;
        line-cap: round;
      }
      line-color: rgb(119,119,119);
      line-width: 3;
      line-join: round;
      line-cap: round;
      line-dasharray: 2, 3;
    }
  }
}
.directions{
  [oneway='yes']{
    [zoom>=16]{
      ::line{
        line-color: @direaction;
        line-width: 1;
        line-join: bevel;
        line-dasharray: 0, 12,10, 152;
      }
      ::line1{
        line-color: @direaction;
        line-width: 2;
        line-join: bevel;
        line-dasharray: 0, 12,9, 153;
      }
      ::arrow{
        line-color: @direaction;
        line-width: 3;
        line-join: bevel;
        line-dasharray: 0, 18,2, 154;
      }
      ::arrow1{
        line-color: @direaction;
        line-width: 4;
        line-join: bevel;
        line-dasharray: 0, 18,1, 155;
      }
    }
  }
  [oneway='-1']{
    [zoom>=16]{
      ::line{
        line-color: @direaction;
        line-width: 1;
        line-join: bevel;
        line-dasharray: 0, 12,10, 152;
      }
      ::line1{
        line-color: @direaction;
        line-width: 2;
        line-join: bevel;
        line-dasharray: 0, 12,9, 153;
      }
      ::arrow{
        line-color: @direaction;
        line-width: 3;
        line-join: bevel;
        line-dasharray: 0, 18,2, 154;
      }
      ::arrow1{
        line-color: @direaction;
        line-width: 4;
        line-join: bevel;
        line-dasharray: 0, 18,1, 155;
      }
    }
  }
}
.bridges_casing{
  [highway='motorway'],[highway='motorway_link']{
    [zoom=12]{
      ::case{
        line-color: @roadCase;
        line-width: 3;
      }
    }
    [zoom>=13][zoom<15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4;
      }
   }
    [zoom>=15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 7; 
      }
    }
  }
  [highway='trunk'],[highway='trunk_link']{
    [zoom=12]{
      ::case{
        line-color: @primaryroadCase;
        line-width: 4;
      }
    }
    [zoom>=13][zoom<15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5;
      }
    }
    [zoom>=15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 8; 
      }
    }
  }
  [highway='primary'],[highway='primary_link']{
    [zoom=12]{
      ::case{
        line-color: @roadCase;
        line-width: 4;
      }
    }
    [zoom>=13][zoom<15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5;       
      }
   }
    [zoom>=15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 8;
      }
    }
  }
  [highway='secondary'],[highway='secondary_link']{
    [zoom>=13][zoom<15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4;
      }
    }
    [zoom>=15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 7;
      }
    }
  }
  [highway='tertiary'],[highway='tertiary_link']{
    [zoom=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 3.5;
      }
    }
    [zoom>=15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 6;
      }
    }
  }
  [highway='residential'],[highway='unclassified'],[highway='road']{
    [zoom>=14][zoom<16]{
      ::case{
        line-color: @brigdeCase;
        line-width: 2.5;
      }
    }
    [zoom>=16]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5.5;
      }
    }
  }
  [highway='service']{
    [zoom=15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 2.5;
      }
    }
    [zoom>=16]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5;
      }
    }
  }
  [highway='pedestrian']{
    [zoom>=14][zoom<16]{
      ::case{
        line-color: @brigdeCase;
        line-width: 2;
      }
    }
    [zoom>=16]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5;      
      }
    }
  }
  [aeroway='runway']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 19;  
      }
    }
  }
  [aeroway='taxiway']{
    [zoom=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5;
      }
    }
    [zoom>=15]{
      ::case{
        line-color: @brigdeCase;
        line-width: 7;
      }
    }
  }
  [railway='subway']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5.5;
      }
    }
  }
  [railway='light_rail'],[railway='narrow_gauge']{
    [zoom>=14]{
      ::case{
        line-color: rgb(85,85,85);
        line-width: 5.5;
      }
    }
  }
  [highway='unsurfaced']{
    [zoom=13]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5;
      }
    }
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 6.5;
      }
    }
  }
  [highway='bridleway'],[highway='path'][horse='designated']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5.5;
      }
    }
  }
  [highway='footway'],[highway='path'][foot='designated']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 6;
      }
    }
  }
  [highway='path'][bicycle!='designated'][foot!='designated'][horse!='designated']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4; 
      }
    }
  }
  [highway='cycleway'],[highway='path'][bicycle='designated']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5.5;
      }
    }
  }
  [highway='byway']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5.5;      
      }
    }
  }
  [railway='rail']{
    [zoom>=13]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5.5;   
        line-join: round;   
      }
    }     
  }
  [railway='INT-spur-siding-yard']{
    [zoom>=13]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5.7;
        line-join: round;
      }
    }
  }
  [railway='disused'][highway=''],[railway='abandoned'][highway=''],[railway='construction'][highway='']{
    [zoom>=13]{
      ::case{
        line-color: @brigdeCase;
        line-width: 6;
      }
    }
  }
  [highway='track'][tracktype='grade1']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 5;
      }
    }
  }
  [highway='track'][tracktype='grade2']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='grade3']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='grade4']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='grade5']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4.5;
      }
    }
  }
  [highway='track'][tracktype='']{
    [zoom>=14]{
      ::case{
        line-color: @brigdeCase;
        line-width: 4.5;
      }
    }
  }
}
.bridges_casing2{
  [railway='subway']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
      }
    }
  }
  [railway='light_rail'],[railway='narrow_gauge']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
      }
    }
  }
  [highway='unsurfaced']{
    [zoom=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;      
      }
    }
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 5;
        line-join: round;
        line-cap: round; 
      }
    }
  }
  [highway='bridleway'],[highway='path'][horse='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='footway'],[highway='path'][foot='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='path'][bicycle!='designated'][foot!='designated'][horse!='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='cycleway'],[highway='path'][bicycle='designated']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='byway']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [railway='rail']{
    [zoom>=10][zoom<13]{
      ::casing{
        line-color: @railway;
        line-width: 2;
        line-join: round;
      }
    }
    [zoom>=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 5;
        line-join: round;
      }
    }
  }
  [railway='INT-spur-siding-yard']{
    [zoom>=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 5;
        line-join: round;      
      }
    }
  }
  [highway=''][railway='disused'],[highway=''][railway='abandoned'],[railway='construction'][highway='']{
    [zoom>=13]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 4.5;
        line-join: round;    
        line-cap: round;  
      }
    }
  }
  [highway='track'][tracktype='grade1']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
      }
    }
  }
  [highway='track'][tracktype='grade2']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='grade3']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='grade4']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='grade5']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='track'][tracktype='']{
    [zoom>=14]{
      ::casing{
        line-color: rgb(255,255,255);
        line-width: 3.5;
        line-join: round;
        line-cap: round;
      }
    }
  }
}
.bridges_fill{
  [highway='motorway'],[highway='motorway_link']{
    [zoom=12]{
      ::fill{
        line-color: @road;
        line-width: 2;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15]{
      ::fill{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='trunk'],[highway='trunk_link']{
    [zoom=12]{
      ::fill{
        line-color: @primaryroad;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @primaryroad;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15]{
      ::fill{
        line-color: @primaryroad;
        line-width: 6;
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='primary'],[highway='primary_link']{
    [zoom=12]{
      ::fill{
        line-color: @road;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15]{
      ::fill{
        line-color: @road;
        line-width: 6;
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='secondary'],[highway='secondary_link']{
    [zoom>=13][zoom<15]{
      ::fill{
        line-color: @road;
        line-width: 3;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15]{
      ::fill{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='tertiary'],[highway='tertiary_link']{
    [zoom=14]{
      ::fill{
        line-color: @road;
        line-width: 2.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=15]{
      ::fill{
        line-color: @road;
        line-width: 5;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='road'],[highway='residential'],[highway='unclassified']{
    [zoom>=14][zoom<16]{
      ::fill{
        line-color: @road;
        line-width: 1.5;
        line-join: round;
        line-cap: round;
      }
    }
    [zoom>=16]{
      ::fill{
        line-color: @road;
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [highway='service']{
    [zoom=15]{
      ::fill{
        line-color: @road;
        line-width: 1;
        line-join: round;
        line-cap: round;       
      }
    }
    [zoom>=16]{
      ::fill{
        line-color: @road;
        line-width: 4;
        line-join: round;
        line-cap: round;       
      }
    }
  }
  [highway='pedestrian']{
    [zoom>=16]{
      ::fill{
        line-color: @road;
        line-width: 4;
        line-join: round;
        line-cap: round;
      }
    }
  }
  [aeroway='runway']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(187,187,204);
        line-width: 4;
      }
    }
  }
  [aeroway='taxiway']{
    [zoom=14]{
      ::fill{
        line-color: rgb(187,187,204);
        line-width: 4;      
      }
    }
    [zoom>=15]{
      ::fill{
        line-color: rgb(187,187,204);
        line-width: 6;      
      }
    }
  }
  [aeroway='runway']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 2;
      }
    }
  }
  [railway='light_rail'],[railway='narrow_gauge']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(102,102,102);
        line-width: 2;
      }
    }
  }
  [highway='unsurfaced']{
    [zoom=13]{
      ::fill{
        line-color: rgb(222,189,156);
        line-width: 3;
        line-join: round;
        line-cap: round;
        line-dasharray: 2, 4;
      }
    }
    [zoom>=14]{
      ::fill{
        line-color: rgb(222,189,156);
        line-width: 4;
        line-join: round;
        line-cap: round;
        line-dasharray: 4, 6;      
      }
    }
  }
  [highway='bridleway'],[highway='path'][horse='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(0,128,0);
        line-width: 3;
        line-dasharray: 2, 4;      
      }
    }
  }
  [highway='footway'],[highway='path'][foot='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(250,128,114);
        line-width: 2;
        line-dasharray: 1, 3;      
        line-join: round;
        line-cap: round;
      }
    }   
  }
  [highway='path'][bicycle!='designated'][foot!='designated'][horse!='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(0,0,0);
        line-width: 0.5;
        line-dasharray: 6, 3;      
        line-join: round;
        line-cap: round;      
      }
    }
  }
  [highway='cycleway'],[highway='path'][bicycle='designated']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(0,0,255);
        line-width: 1.5;
        line-dasharray: 1, 3;      
        line-join: round;
        line-cap: round;        
      }
    }
  }
  [highway='byway']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(255,204,0);
        line-width: 1.5;
        line-join: round;
        line-join: round;
        line-dasharray: 3, 4;
      }
    }
  }
  [railway='rail']{
    [zoom>=13][zoom<14]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 8, 12;
      }
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 3;
        line-join: round;
      }
    }
    [zoom>=14]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 1;
        line-join: round;
        line-dasharray: 0, 11, 8, 1;
      }
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 3;
        line-join: round;
      }
    }
  }
  [railway='INT-spur-siding-yard']{
    [zoom>=13]{
      ::dash{
        line-color: rgb(255,255,255);
        line-width: 0.8;
        line-join: round;
        line-dasharray: 0, 11, 8, 1;
      }
      ::fill{
        line-color: rgb(153,153,153);
        line-width: 2;
        line-join: round;
      }
    }
  }
  [railway='disused'][highway=''],[railway='abandoned'][highway=''],[railway='construction'][highway='']{
    [zoom>=13]{
      ::fill{
        line-color: rgb(128,128,128);
        line-width: 2;
        line-join: round;
        line-dasharray: 2, 4;
      }
    }
  }
  [highway='track'][tracktype='grade1']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(179,119,0);
        line-width: 2;
        line-opacity: 0.7
      }
    }    
  }
  [highway='track'][tracktype='grade2']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(168,112,0);
        line-width: 1.5;
        line-opacity: 0.8;
        line-join: round;
        line-cap: round;
        line-dasharray: 3, 4;
      }
    }
  }
  [highway='track'][tracktype='grade3']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 2;
        line-opacity: 0.7;
        line-join: round;
        line-cap: round;
      }
    } 
  }
  [highway='track'][tracktype='grade4']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 2;
        line-opacity: 0.8;
        line-join: round;
        line-cap: round;
        line-dasharray: 4, 7, 1, 5;
      }
    }     
  }
  [highway='track'][tracktype='grade5']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 2;
        line-opacity: 0.8;
        line-join: round;
        line-cap: round;
        line-dasharray: 1, 5;
      }
    }    
  }
  [highway='track'][tracktype='']{
    [zoom>=14]{
      ::fill{
        line-color: rgb(153,102,0);
        line-width: 1.5;
        line-join: round;
        line-cap: round;
        line-dasharray: 3, 4;
      }
    }  
  }
}
.access{ 
  [access='permissive'][highway='unclassified'],[access='permissive'][highway='residential'],[access='permissive'][highway='footway']{
    [zoom=16]{
      line-color: rgb(204,255,153);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='permissive'][highway='service'][service!='INT-minor']{
    [zoom=15]{
      line-color: rgb(204,255,153);
      line-width: 3;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='permissive'][highway='unclassified'],[access='permissive'][highway='residential'],[access='permissive'][highway='footway'],[access='permissive'][highway='service']{
    [zoom>=16]{
      line-color: rgb(204,255,153);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='destination'][highway='unclassified'],[access='destination'][highway='residential']{
    [zoom=15]{
      line-color: rgb(194,224,255);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='destination'][highway='service'][service!='INT-minor']{
    [zoom=15]{
      line-color: rgb(194,224,255);
      line-width: 3;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;    
    }
  }
  [access='destination'][highway='unclassified'],[access='destination'][highway='residential'],[access='destination'][highway='service']{
    [zoom>=16]{
      line-color: rgb(194,224,255);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;
    }
  }
  [access='private'][highway!='service'],[access='no'][highway!='service']{
    [zoom=15]{
      line-color: rgb(239,169,169);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;     
    }
  }
  [access='private'][highway='service'][service!='INT-minor'],[access='no'][highway='service'][service!='INT-minor']{
    [zoom=15]{
      line-color: rgb(239,169,169);
      line-width: 3;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8; 
    }
  }
  [access='private'],[access='no']{
    [zoom>=16]{
      line-color: rgb(239,169,169);
      line-width: 6;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      line-dasharray: 6, 8;  
    }
  }
}
#guideways {
    ::line {
        [zoom=3] {
            line-color: rgb(102,102,255);
            line-width: 3;
            line-opacity: 0.6;
            line-join: 'round';
        }
        [zoom>3] {
            line-color: rgb(102,102,255);
            line-width: 3;
            line-join: 'round';
        }
    }
    ::dash {
        [zoom=3] {
            line-color: rgb(255,255,255);
            line-width: 1;
            line-opacity: 0.6;
            line-join: 'round';
            line-dasharray: 8,12;
        }
        [zoom>3] {
            line-color: rgb(255,255,255);
            line-width: 1;
            line-join: 'round';
            line-dasharray: 0,11,8,1;
        }
    }
}
#trams {
    [railway='tram'] {
        [zoom>12][zoom<15] {
            line-color: rgb(68,68,68);
            line-width: 1;
        }
    }
    [railway='tram'][bridge!='yes'] {
        [zoom>=15] {
            line-color: rgb(68,68,68);
            line-width: 1;
        }
    }
    [railway='tram'][bridge ='yes'] {
        [zoom>=15] {
            line-color: rgb(68,68,68);
            line-width: 1;
        }
    }
}