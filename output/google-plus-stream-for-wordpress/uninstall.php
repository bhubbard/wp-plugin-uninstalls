<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gps_height');
delete_site_option('gps_height');
delete_option('gps_title');
delete_site_option('gps_title');
delete_option('gps_ctime');
delete_site_option('gps_ctime');
delete_option('gps_ctime_prof');
delete_site_option('gps_ctime_prof');
delete_option('gps_m2c');
delete_site_option('gps_m2c');
delete_option('gps_cache');
delete_site_option('gps_cache');
delete_option('gps_cache_prof');
delete_site_option('gps_cache_prof');
delete_option('gps_credit');
delete_site_option('gps_credit');
delete_option('gps_profid');
delete_site_option('gps_profid');
delete_option('gps_nopost');
delete_site_option('gps_nopost');
delete_option('gps_dimage');
delete_site_option('gps_dimage');
delete_option('gps_nowordpost');
delete_site_option('gps_nowordpost');

