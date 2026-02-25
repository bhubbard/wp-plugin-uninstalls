<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('erpb_color_setting');
delete_site_option('erpb_color_setting');
delete_option('erpb_location_setting');
delete_site_option('erpb_location_setting');

