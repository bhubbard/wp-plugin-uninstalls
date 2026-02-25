<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp125_ad_orientation');
delete_site_option('wp125_ad_orientation');
delete_option('wp125_num_slots');
delete_site_option('wp125_num_slots');
delete_option('wp125_ad_order');
delete_site_option('wp125_ad_order');
delete_option('wp125_buyad_url');
delete_site_option('wp125_buyad_url');
delete_option('wp125_disable_default_style');
delete_site_option('wp125_disable_default_style');
delete_option('wp125_emailonexp');
delete_site_option('wp125_emailonexp');
delete_option('wp125_defaultad');
delete_site_option('wp125_defaultad');
delete_option('wp125_daysbeforeexp');
delete_site_option('wp125_daysbeforeexp');
delete_option('wp125_dofollow');
delete_site_option('wp125_dofollow');
delete_option('wp125_db_version');
delete_site_option('wp125_db_version');

