<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vswc_api_system_key');
delete_site_option('vswc_api_system_key');
delete_option('vswc_current_value');
delete_site_option('vswc_current_value');
delete_option('vswc_last_value');
delete_site_option('vswc_last_value');
delete_option('vswc_last_value_updated_at');
delete_site_option('vswc_last_value_updated_at');
delete_option('vswc_license_key');
delete_site_option('vswc_license_key');
delete_option('vswc_first_activation');
delete_site_option('vswc_first_activation');
delete_option('vswc_uuid');
delete_site_option('vswc_uuid');
delete_option('vswc_settings_updated_timestamp');
delete_site_option('vswc_settings_updated_timestamp');
delete_option('vswc_version');
delete_site_option('vswc_version');
delete_option('vswc_selected_language');
delete_site_option('vswc_selected_language');

