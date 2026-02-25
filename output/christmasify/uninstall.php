<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf_christmasify_snowflakes');
delete_site_option('cf_christmasify_snowflakes');
delete_option('cf_christmasify_classy_snow');
delete_site_option('cf_christmasify_classy_snow');
delete_option('cf_christmasify_snow_speed');
delete_site_option('cf_christmasify_snow_speed');
delete_option('cf_christmasify_santa');
delete_site_option('cf_christmasify_santa');
delete_option('cf_christmasify_music');
delete_site_option('cf_christmasify_music');
delete_option('cf_christmasify_image_frame');
delete_site_option('cf_christmasify_image_frame');
delete_option('cf_christmasify_font');
delete_site_option('cf_christmasify_font');
delete_option('cf_christmasify_homepage_only');
delete_site_option('cf_christmasify_homepage_only');
delete_option('cf_christmasify_date_from');
delete_site_option('cf_christmasify_date_from');
delete_option('cf_christmasify_date_to');
delete_site_option('cf_christmasify_date_to');

