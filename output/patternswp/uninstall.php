<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('patternswp_hide_theme_patterns');
delete_site_option('patternswp_hide_theme_patterns');
delete_option('patternswp_hide_uncategorized_patterns');
delete_site_option('patternswp_hide_uncategorized_patterns');
delete_option('patternswp_hide_core_patterns');
delete_site_option('patternswp_hide_core_patterns');
delete_option('patternswp_plugin_license_data');
delete_site_option('patternswp_plugin_license_data');
delete_option('patternswp_license_key');
delete_site_option('patternswp_license_key');

// Delete Transients
delete_transient('patternswp_category_type');
delete_site_transient('patternswp_category_type');
delete_transient('patternswp_cache_cleared');
delete_site_transient('patternswp_cache_cleared');
delete_transient('patternswp_activation_redirect');
delete_site_transient('patternswp_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('patternswp_hourly_transient_load');

