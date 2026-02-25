<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fpropdf_restrict_condition');
delete_site_option('fpropdf_restrict_condition');
delete_option('fpropdf_restrict_user');
delete_site_option('fpropdf_restrict_user');
delete_option('fpropdf_restrict_role');
delete_site_option('fpropdf_restrict_role');
delete_option('fpropdf_enable_security');
delete_site_option('fpropdf_enable_security');
delete_option('fpropdf_api_server');
delete_site_option('fpropdf_api_server');
delete_option('fpropdf_use_field_keys');
delete_site_option('fpropdf_use_field_keys');
delete_option('fpropdf_licence');
delete_site_option('fpropdf_licence');
delete_option('fpropdf_limit_dropdowns');
delete_site_option('fpropdf_limit_dropdowns');
delete_option('fpropdf_installed_version');
delete_site_option('fpropdf_installed_version');
delete_option('fpropdf_version');
delete_site_option('fpropdf_version');
delete_option('fpropdf_restrict_remote_requests');
delete_site_option('fpropdf_restrict_remote_requests');
delete_option('fpropdf_enable_local');
delete_site_option('fpropdf_enable_local');
delete_option('fpropdf_demo_imported');
delete_site_option('fpropdf_demo_imported');
delete_option('fpropdf_automap');
delete_site_option('fpropdf_automap');
delete_option('fpropdf_pdfaid_api_key');
delete_site_option('fpropdf_pdfaid_api_key');
delete_option('fpropdf_enable_previews');
delete_site_option('fpropdf_enable_previews');
delete_option('fpropdf_field_map_allowed');
delete_site_option('fpropdf_field_map_allowed');
delete_option('fpropdf_faster_uploads');
delete_site_option('fpropdf_faster_uploads');
delete_option('fpropdf_disable_local');
delete_site_option('fpropdf_disable_local');
delete_option('fpropdf_embedded_data');
delete_site_option('fpropdf_embedded_data');

// Delete Transients
delete_transient('fpropdf_notification_restored');
delete_site_transient('fpropdf_notification_restored');
delete_transient('fpropdf_notification_deleted');
delete_site_transient('fpropdf_notification_deleted');
delete_transient('fpropdf_notification_new_layout');
delete_site_transient('fpropdf_notification_new_layout');

