<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bps_sidebar_list');
delete_site_option('bps_sidebar_list');
delete_option('bps_sidebar_position');
delete_site_option('bps_sidebar_position');
delete_option('bps_display_tool');
delete_site_option('bps_display_tool');

