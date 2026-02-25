<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cc_whmcs_bridge_version');
delete_site_option('cc_whmcs_bridge_version');
delete_option('cc_whmcs_bridge_footer');
delete_site_option('cc_whmcs_bridge_footer');
delete_option('cc_whmcs_bridge_sso_cache');
delete_site_option('cc_whmcs_bridge_sso_cache');
delete_option('cc_whmcs_bridge_url');
delete_site_option('cc_whmcs_bridge_url');
delete_option('cc_whmcs_bridge_pages');
delete_site_option('cc_whmcs_bridge_pages');
delete_option('cc_whmcs_bridge_log');
delete_site_option('cc_whmcs_bridge_log');
delete_option('cc_whmcs_bridge_page');
delete_site_option('cc_whmcs_bridge_page');
delete_option('cc_whmcs_bridge_ftp_user');
delete_site_option('cc_whmcs_bridge_ftp_user');
delete_option('cc_whmcs_bridge_ftp_password');
delete_site_option('cc_whmcs_bridge_ftp_password');
delete_option('cc-ce-bridge-cp-support-us');
delete_site_option('cc-ce-bridge-cp-support-us');
delete_option('cc_whmcs_bridge_template');
delete_site_option('cc_whmcs_bridge_template');
delete_option('cc_whmcs_bridge_css');
delete_site_option('cc_whmcs_bridge_css');
delete_option('cc_whmcs_bridge_sso_js');
delete_site_option('cc_whmcs_bridge_sso_js');
delete_option('cc_whmcs_bridge_jquery');
delete_site_option('cc_whmcs_bridge_jquery');
delete_option('cc_whmcs_bridge_debug');
delete_site_option('cc_whmcs_bridge_debug');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cc_whmcs_bridge_cache%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cc_whmcs_bridge_sso_active');
delete_site_option('cc_whmcs_bridge_sso_active');
delete_option('cc_whmcs_bridge_sso_local_key');
delete_site_option('cc_whmcs_bridge_sso_local_key');
delete_option('cc_whmcs_bridge_prefix');
delete_site_option('cc_whmcs_bridge_prefix');
delete_option('cc_whmcs_bridge_sso_force_ssl');
delete_site_option('cc_whmcs_bridge_sso_force_ssl');
delete_option('cc_whmcs_bridge_sso_titles');
delete_site_option('cc_whmcs_bridge_sso_titles');
delete_option('cc_whmcs_bridge_permalinks');
delete_site_option('cc_whmcs_bridge_permalinks');
delete_option('cc_whmcs_bridge_custom_rules');
delete_site_option('cc_whmcs_bridge_custom_rules');
delete_option('cc_whmcs_bridge_invoicestyle');
delete_site_option('cc_whmcs_bridge_invoicestyle');
delete_option('cc_whmcs_bridge_style');
delete_site_option('cc_whmcs_bridge_style');
delete_option('cc_whmcs_bridge_affiliate_id');
delete_site_option('cc_whmcs_bridge_affiliate_id');
delete_option('cc_whmcs_bridge_sso_license_key');
delete_site_option('cc_whmcs_bridge_sso_license_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cc_whmcs_bridge_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cc_whmcs_bridge_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cc_whmcs_bridge_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cc_whmcs_bridge_page' ) );

