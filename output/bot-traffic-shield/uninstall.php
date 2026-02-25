<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btsld_blocked_log');
delete_site_option('btsld_blocked_log');
delete_option('btsld_blocked_count');
delete_site_option('btsld_blocked_count');
delete_option('btsld_settings');
delete_site_option('btsld_settings');

