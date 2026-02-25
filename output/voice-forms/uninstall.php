<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vf_api_system_key');
delete_site_option('vf_api_system_key');
delete_option('vf_current_value');
delete_site_option('vf_current_value');
delete_option('vf_last_value');
delete_site_option('vf_last_value');
delete_option('vf_last_value_updated_at');
delete_site_option('vf_last_value_updated_at');
delete_option('vf_license_key');
delete_site_option('vf_license_key');
delete_option('vf_first_activation');
delete_site_option('vf_first_activation');
delete_option('vf_uuid');
delete_site_option('vf_uuid');
delete_option('vf_settings_updated_timestamp');
delete_site_option('vf_settings_updated_timestamp');
delete_option('vf_version');
delete_site_option('vf_version');
delete_option('vf_selected_language');
delete_site_option('vf_selected_language');

