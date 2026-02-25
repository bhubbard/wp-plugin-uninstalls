<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LA_ads_Off');
delete_site_option('LA_ads_Off');
delete_option('LA_arr_How');
delete_site_option('LA_arr_How');
delete_option('LA_arr_Use');
delete_site_option('LA_arr_Use');
delete_option('LA_ads_Pub');
delete_site_option('LA_ads_Pub');
delete_option('LA_ads_Api');
delete_site_option('LA_ads_Api');
delete_option('LA_ads_How');
delete_site_option('LA_ads_How');
delete_option('LA_ads_Use');
delete_site_option('LA_ads_Use');

