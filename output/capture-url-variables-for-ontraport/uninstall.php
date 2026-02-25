<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oap_utm_plugin_link_support_link');
delete_site_option('oap_utm_plugin_link_support_link');
delete_option('oap_utm_plugin_link_license_link');
delete_site_option('oap_utm_plugin_link_license_link');
delete_option('oap_utm_custom_extra_fields');
delete_site_option('oap_utm_custom_extra_fields');
delete_option('oap_utm_plugin_authenticated');
delete_site_option('oap_utm_plugin_authenticated');
delete_option('oap_utm_license_key');
delete_site_option('oap_utm_license_key');
delete_option('oap-utm_message');
delete_site_option('oap-utm_message');
delete_option('itmooti-utm_message');
delete_site_option('itmooti-utm_message');
delete_option('oap_utm_api_version');
delete_site_option('oap_utm_api_version');
delete_option('oap_utm_app_id');
delete_site_option('oap_utm_app_id');
delete_option('oap_utm_api_key');
delete_site_option('oap_utm_api_key');
delete_option('oap_utm_extra_fields');
delete_site_option('oap_utm_extra_fields');
delete_option('oap_utm_fields');
delete_site_option('oap_utm_fields');
delete_option('oap_utm_form_ids');
delete_site_option('oap_utm_form_ids');
delete_option('oap_utm_user_forms');
delete_site_option('oap_utm_user_forms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'utm_fields_custom_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oap_utm_form_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('plugin_scheduled_event');

