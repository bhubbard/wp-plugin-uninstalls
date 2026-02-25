<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beerxml_shortcode_cache');
delete_site_option('beerxml_shortcode_cache');
delete_option('beerxml_shortcode_units');
delete_site_option('beerxml_shortcode_units');
delete_option('beerxml_shortcode_download');
delete_site_option('beerxml_shortcode_download');
delete_option('beerxml_shortcode_style');
delete_site_option('beerxml_shortcode_style');
delete_option('beerxml_shortcode_mash');
delete_site_option('beerxml_shortcode_mash');
delete_option('beerxml_shortcode_misc');
delete_site_option('beerxml_shortcode_misc');
delete_option('beerxml_shortcode_actuals');
delete_site_option('beerxml_shortcode_actuals');
delete_option('beerxml_shortcode_fermentation');
delete_site_option('beerxml_shortcode_fermentation');
delete_option('beerxml_shortcode_mhop');
delete_site_option('beerxml_shortcode_mhop');

