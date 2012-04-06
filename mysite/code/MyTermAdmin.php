<?php

class MyTermAdmin extends ModelAdmin {
    
  public static $managed_models = array(   //since 2.3.2
      'Term'
   );
 
  static $url_segment = 'terms'; // will be linked as /admin/products
  static $menu_title = 'Term Admin';
 
}
?>
