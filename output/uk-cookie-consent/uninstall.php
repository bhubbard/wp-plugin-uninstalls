<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('termly_website');
delete_site_option('termly_website');
delete_option('termly_api_key');
delete_site_option('termly_api_key');
delete_option('termly_business_info');
delete_site_option('termly_business_info');
delete_option('termly_business_settings');
delete_site_option('termly_business_settings');
delete_option('termly_banner');
delete_site_option('termly_banner');
delete_option('termly_banner_settings');
delete_site_option('termly_banner_settings');
delete_option('termly_cookie_preference_button');
delete_site_option('termly_cookie_preference_button');
delete_option('termly_site_scan');
delete_site_option('termly_site_scan');
delete_option('termly_display_banner');
delete_site_option('termly_display_banner');
delete_option('termly_display_auto_blocker');
delete_site_option('termly_display_auto_blocker');
delete_option('termly_display_custom_map');
delete_site_option('termly_display_custom_map');
delete_option('termly_custom_blocking_map');
delete_site_option('termly_custom_blocking_map');

// Delete Transients
delete_transient('termly-feature-set');
delete_site_transient('termly-feature-set');
delete_transient('termly-site-scan-results');
delete_site_transient('termly-site-scan-results');

// Clear Cron Jobs
wp_clear_scheduled_hook('termly_account_update');

