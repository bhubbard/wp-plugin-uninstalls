<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sau_updated_packages');
delete_site_option('sau_updated_packages');
delete_option('sau_last_checked');
delete_site_option('sau_last_checked');
delete_option('sau_mode');
delete_site_option('sau_mode');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('sau_check_updates');

