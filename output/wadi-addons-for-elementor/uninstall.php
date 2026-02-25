<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_allow_tracking');
delete_site_option('elementor_allow_tracking');
delete_option('wadi_save_settings');
delete_site_option('wadi_save_settings');
delete_option('wadi_elements_btn_value');
delete_site_option('wadi_elements_btn_value');
delete_option('wadi_integration_settings_options');
delete_site_option('wadi_integration_settings_options');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('templates_count');
delete_site_option('templates_count');
delete_option('temp_count');
delete_site_option('temp_count');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

