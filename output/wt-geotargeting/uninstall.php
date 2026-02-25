<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wt_geotargeting_geobase');
delete_site_option('wt_geotargeting_geobase');
delete_option('wt_geotargeting_sistem');
delete_site_option('wt_geotargeting_sistem');
delete_option('wt_geotargeting_default');
delete_site_option('wt_geotargeting_default');
delete_option('wt_geotargeting_debug');
delete_site_option('wt_geotargeting_debug');
delete_option('wt_geotargeting_region');
delete_site_option('wt_geotargeting_region');

