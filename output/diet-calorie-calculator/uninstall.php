<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mwp_dcc_klaviyo_connected');
delete_site_option('mwp_dcc_klaviyo_connected');
delete_option('mwp_dcc_klaviyo_list');
delete_site_option('mwp_dcc_klaviyo_list');
delete_option('mwp_dcc_zapier_connected');
delete_site_option('mwp_dcc_zapier_connected');
delete_option('mwp_dcc_notifications_email');
delete_site_option('mwp_dcc_notifications_email');
delete_option('mwp_dcc_plugin_version');
delete_site_option('mwp_dcc_plugin_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mwp_dcc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_connected' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mwp_dcc_klaviyo_list_id');
delete_site_option('mwp_dcc_klaviyo_list_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mwp_dcc_form_title_text');
delete_site_option('mwp_dcc_form_title_text');
delete_option('mwp_dcc_form_title_align');
delete_site_option('mwp_dcc_form_title_align');
delete_option('mwp_dcc_results_view');
delete_site_option('mwp_dcc_results_view');
delete_option('mwp_dcc_units_system');
delete_site_option('mwp_dcc_units_system');
delete_option('mwp_dcc_user_agreement');
delete_site_option('mwp_dcc_user_agreement');
delete_option('mwp_dcc_privacy_policy_url');
delete_site_option('mwp_dcc_privacy_policy_url');
delete_option('mwp_dcc_terms_url');
delete_site_option('mwp_dcc_terms_url');
delete_option('mwp_dcc_user_agreement_text');
delete_site_option('mwp_dcc_user_agreement_text');
delete_option('mwp_dcc_layout_rounded');
delete_site_option('mwp_dcc_layout_rounded');
delete_option('mwp_dcc_activity_list_type');
delete_site_option('mwp_dcc_activity_list_type');
delete_option('mwp_dcc_custom_style');
delete_site_option('mwp_dcc_custom_style');
delete_option('mwp_dcc_primary_color');
delete_site_option('mwp_dcc_primary_color');
delete_option('mwp_dcc_klaviyo');
delete_site_option('mwp_dcc_klaviyo');
delete_option('mwp_dcc_klaviyo_api_key');
delete_site_option('mwp_dcc_klaviyo_api_key');
delete_option('mwp_dcc_zapier');
delete_site_option('mwp_dcc_zapier');
delete_option('mwp_dcc_zapier_api_key');
delete_site_option('mwp_dcc_zapier_api_key');

