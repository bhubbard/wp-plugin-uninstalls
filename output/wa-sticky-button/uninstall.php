<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('okapi_wasb_activate');
delete_site_option('okapi_wasb_activate');
delete_option('okapi_wasb_display_on_mobile');
delete_site_option('okapi_wasb_display_on_mobile');
delete_option('okapi_wasb_display_on_tablet');
delete_site_option('okapi_wasb_display_on_tablet');
delete_option('okapi_wasb_display_on_desktop');
delete_site_option('okapi_wasb_display_on_desktop');
delete_option('okapi_wasb_position');
delete_site_option('okapi_wasb_position');
delete_option('okapi_wasb_number');
delete_site_option('okapi_wasb_number');
delete_option('okapi_wasb_msg');
delete_site_option('okapi_wasb_msg');
delete_option('okapi_wasb_width');
delete_site_option('okapi_wasb_width');
delete_option('okapi_wasb_height');
delete_site_option('okapi_wasb_height');
delete_option('okapi_wasb_margin');
delete_site_option('okapi_wasb_margin');
delete_option('okapi_wasb_icon_type');
delete_site_option('okapi_wasb_icon_type');
delete_option('okapi_wasb_icon_id');
delete_site_option('okapi_wasb_icon_id');

