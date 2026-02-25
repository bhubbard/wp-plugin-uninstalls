<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpe_settings');
delete_site_option('wpe_settings');
delete_option('wpe_settings_general');
delete_site_option('wpe_settings_general');
delete_option('wpe_settings_theme_editor');
delete_site_option('wpe_settings_theme_editor');
delete_option('wpe_settings_plugin_editor');
delete_site_option('wpe_settings_plugin_editor');
delete_option('wpe_settings_post_editor');
delete_site_option('wpe_settings_post_editor');
delete_option('wpe_settings_license');
delete_site_option('wpe_settings_license');
delete_option('wpe_log_file_name');
delete_site_option('wpe_log_file_name');

