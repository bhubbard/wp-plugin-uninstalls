<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exclude_pin_it_images');
delete_site_option('exclude_pin_it_images');
delete_option('excluded_pint_it_pages');
delete_site_option('excluded_pint_it_pages');
delete_option('WL_Enable_Pinit_Post');
delete_site_option('WL_Enable_Pinit_Post');
delete_option('WL_Enable_Pinit_Page');
delete_site_option('WL_Enable_Pinit_Page');
delete_option('WL_Pinit_Btn_On_Hover');
delete_site_option('WL_Pinit_Btn_On_Hover');
delete_option('WL_Mobile_Status');
delete_site_option('WL_Mobile_Status');
delete_option('WL_Pinit_Btn_Color');
delete_site_option('WL_Pinit_Btn_Color');
delete_option('WL_Pinit_Btn_Design');
delete_site_option('WL_Pinit_Btn_Design');
delete_option('WL_Pinit_Btn_Size');
delete_site_option('WL_Pinit_Btn_Size');

