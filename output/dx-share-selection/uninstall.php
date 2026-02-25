<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dxss_active');
delete_site_option('dxss_active');
delete_option('dxss_just_activated');
delete_site_option('dxss_just_activated');

