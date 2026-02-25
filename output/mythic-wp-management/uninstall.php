<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mythic-wp-key');
delete_site_option('mythic-wp-key');
delete_option('mythic-wp-last_query');
delete_site_option('mythic-wp-last_query');
delete_option('mythic-wp-last_cron');
delete_site_option('mythic-wp-last_cron');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('mythic_wp_last_cron_check');

