<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uvs_api_system_key');
delete_site_option('uvs_api_system_key');
delete_option('uvs_current_value');
delete_site_option('uvs_current_value');
delete_option('uvs_last_value');
delete_site_option('uvs_last_value');
delete_option('uvs_last_value_updated_at');
delete_site_option('uvs_last_value_updated_at');
delete_option('uvs_license_key');
delete_site_option('uvs_license_key');
delete_option('uvs_first_activation');
delete_site_option('uvs_first_activation');
delete_option('uvs_uuid');
delete_site_option('uvs_uuid');
delete_option('uvs_settings_updated_timestamp');
delete_site_option('uvs_settings_updated_timestamp');
delete_option('uvs_version');
delete_site_option('uvs_version');
delete_option('uvs_selected_language');
delete_site_option('uvs_selected_language');

