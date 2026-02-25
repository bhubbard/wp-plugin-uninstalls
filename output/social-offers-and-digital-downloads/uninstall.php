<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siso_widgetID');
delete_site_option('siso_widgetID');
delete_option('user_nicename');
delete_site_option('user_nicename');

