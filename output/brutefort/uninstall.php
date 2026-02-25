<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brutef_whitelisted_ips');
delete_site_option('brutef_whitelisted_ips');
delete_option('brutef_setup_wizard_completed');
delete_site_option('brutef_setup_wizard_completed');
delete_option('brutef_rate_limit_settings');
delete_site_option('brutef_rate_limit_settings');
delete_option('brutef_geo_settings');
delete_site_option('brutef_geo_settings');
delete_option('brutef_login_url_settings');
delete_site_option('brutef_login_url_settings');

// Delete Transients
delete_transient('brutefort_activation_redirect');
delete_site_transient('brutefort_activation_redirect');
delete_transient('brutef_free_activated');
delete_site_transient('brutef_free_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('brutef_cleanup_logs');
wp_clear_scheduled_hook('brutef_license_check');
wp_clear_scheduled_hook('brutef_update_check');
wp_clear_scheduled_hook('brutefort_cleanup_logs');
wp_clear_scheduled_hook('brutefort_license_check');
wp_clear_scheduled_hook('brutefort_update_check');

