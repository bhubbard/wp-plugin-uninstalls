<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ACFFA_current_version');
delete_site_option('ACFFA_current_version');
delete_option('acffa_settings');
delete_site_option('acffa_settings');
delete_option('ACFFA_theme_install_update_needed');
delete_site_option('ACFFA_theme_install_update_needed');
delete_option('ACFFA_cdn_error');
delete_site_option('ACFFA_cdn_error');
delete_option('ACFFA_kits');
delete_site_option('ACFFA_kits');
delete_option('ACFFA_last_api_call_status');
delete_site_option('ACFFA_last_api_call_status');
delete_option('ACFFA_custom_icon_sets_list');
delete_site_option('ACFFA_custom_icon_sets_list');
delete_option('ACFFA_latest_version');
delete_site_option('ACFFA_latest_version');
delete_option('ACFFA_fa_api_key');
delete_site_option('ACFFA_fa_api_key');
delete_option('ACFFA_icon_data');
delete_site_option('ACFFA_icon_data');
delete_option('ACFFA_active_icon_set');
delete_site_option('ACFFA_active_icon_set');
delete_option('ACFFA_latest_version_timestamp');
delete_site_option('ACFFA_latest_version_timestamp');

// Delete Transients
delete_transient('ACFFA_access_token');
delete_site_transient('ACFFA_access_token');
delete_transient('ACFFA_search_config');
delete_site_transient('ACFFA_search_config');

// Clear Cron Jobs
wp_clear_scheduled_hook('ACFFA_theme_install_update_check');
wp_clear_scheduled_hook('ACFFA_refresh_latest_icons');

