<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gwuncomo_title');
delete_site_option('gwuncomo_title');
delete_option('gwuncomo_message');
delete_site_option('gwuncomo_message');
delete_option('gwuncomo_theme_mode');
delete_site_option('gwuncomo_theme_mode');
delete_option('gwuncomo_logo_id');
delete_site_option('gwuncomo_logo_id');
delete_option('gwuncomo_enabled');
delete_site_option('gwuncomo_enabled');
delete_option('gwuncomo_start_datetime');
delete_site_option('gwuncomo_start_datetime');
delete_option('gwuncomo_end_datetime');
delete_site_option('gwuncomo_end_datetime');
delete_option('gwuncomo_whitelist_ips');
delete_site_option('gwuncomo_whitelist_ips');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

