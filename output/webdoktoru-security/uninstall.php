<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webdoktoru_security_settings');
delete_site_option('webdoktoru_security_settings');

// Delete Transients
delete_transient('webdoktoru_security_cache');
delete_site_transient('webdoktoru_security_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('webdoktoru_security_cleanup');

