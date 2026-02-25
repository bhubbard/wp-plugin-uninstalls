<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('infumar_settings');
delete_site_option('infumar_settings');
delete_option('infumar_last_sync');
delete_site_option('infumar_last_sync');
delete_option('infumar_stats');
delete_site_option('infumar_stats');

