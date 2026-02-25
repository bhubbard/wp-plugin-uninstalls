<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ns_shield_hsts');
delete_site_option('ns_shield_hsts');
delete_option('ns_shield_security_headers');
delete_site_option('ns_shield_security_headers');
delete_option('ns_shield_app_passwords');
delete_site_option('ns_shield_app_passwords');
delete_option('ns_shield_default_admin');
delete_site_option('ns_shield_default_admin');
delete_option('ns_shield_new_admin_login');
delete_site_option('ns_shield_new_admin_login');
delete_option('ns_shield_admin_login_change_pending');
delete_site_option('ns_shield_admin_login_change_pending');
delete_option('ns_shield_directory_indexing');
delete_site_option('ns_shield_directory_indexing');
delete_option('ns_shield_file_editor');
delete_site_option('ns_shield_file_editor');
delete_option('ns_shield_wp_api_json');
delete_site_option('ns_shield_wp_api_json');
delete_option('ns_shield_xml_rpc');
delete_site_option('ns_shield_xml_rpc');
delete_option('ns_shield_login_url_enabled');
delete_site_option('ns_shield_login_url_enabled');
delete_option('ns_shield_w3tc_flushed');
delete_site_option('ns_shield_w3tc_flushed');
delete_option('ns_shield_login_url');
delete_site_option('ns_shield_login_url');
delete_option('ns_shield_debug');
delete_site_option('ns_shield_debug');
delete_option('ns_shield_csp_header_light');
delete_site_option('ns_shield_csp_header_light');
delete_option('ns_shield_csp_header_hard');
delete_site_option('ns_shield_csp_header_hard');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ns_shield_promo_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ns_shield_promo_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ns_shield_promo_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ns_shield_promo_banner_dismissed' ) );

