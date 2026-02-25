<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_php_settings_settings');
delete_site_option('easy_php_settings_settings');
delete_option('easy_php_settings_wp_memory_settings');
delete_site_option('easy_php_settings_wp_memory_settings');
delete_option('easy_php_settings_debugging_settings');
delete_site_option('easy_php_settings_debugging_settings');

