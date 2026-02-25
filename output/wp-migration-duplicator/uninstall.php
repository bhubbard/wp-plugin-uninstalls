<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wt_mgdp_admin_modules');
delete_site_option('wt_mgdp_admin_modules');
delete_option('wt_mgdp_cron_settings');
delete_site_option('wt_mgdp_cron_settings');
delete_option('wp_mgdp_log_id');
delete_site_option('wp_mgdp_log_id');
delete_option('wt_mgdp_cadvanced_settings');
delete_site_option('wt_mgdp_cadvanced_settings');
delete_option('wt_mgdp_advanced_import_settings');
delete_site_option('wt_mgdp_advanced_import_settings');
delete_option('wt_mgdp_options');
delete_site_option('wt_mgdp_options');

// Clear Cron Jobs

