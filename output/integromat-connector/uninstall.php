<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iwc-logging-enabled');
delete_site_option('iwc-logging-enabled');
delete_option('iwc_api_permissions_enabled');
delete_site_option('iwc_api_permissions_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'iwc_permission_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('iwc_strict_file_validation');
delete_site_option('iwc_strict_file_validation');
delete_option('iwc_allowed_file_extensions');
delete_site_option('iwc_allowed_file_extensions');
delete_option('iwc_log_encryption_key');
delete_site_option('iwc_log_encryption_key');
delete_option('iwc_max_payload_size');
delete_site_option('iwc_max_payload_size');
delete_option('iwc_rate_limit_enabled');
delete_site_option('iwc_rate_limit_enabled');
delete_option('iwc_rate_limit_requests');
delete_site_option('iwc_rate_limit_requests');
delete_option('iwc_payload_limit_enabled');
delete_site_option('iwc_payload_limit_enabled');
delete_option('iwc_sanitize_post_content');
delete_site_option('iwc_sanitize_post_content');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'integromat_api_options_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('iwc_plugin_version');
delete_site_option('iwc_plugin_version');
delete_option('iwc_log_security_events');
delete_site_option('iwc_log_security_events');
delete_option('integromat_api_options_taxonomy');
delete_site_option('integromat_api_options_taxonomy');
delete_option('integromat_api_options_comment');
delete_site_option('integromat_api_options_comment');
delete_option('integromat_api_options_post');
delete_site_option('integromat_api_options_post');
delete_option('integromat_api_options_term');
delete_site_option('integromat_api_options_term');
delete_option('integromat_api_options_user');
delete_site_option('integromat_api_options_user');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

