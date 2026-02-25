<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppwp_previous_protected_categories');
delete_site_option('ppwp_previous_protected_categories');
delete_option('ppwp_previous_protected_tags');
delete_site_option('ppwp_previous_protected_tags');
delete_option('wp_protect_password_license_key');
delete_site_option('wp_protect_password_license_key');
delete_option('wp_protect_password_licensed');
delete_site_option('wp_protect_password_licensed');
delete_option('WpFastestCacheExclude');
delete_site_option('WpFastestCacheExclude');
delete_option('ppw_data_checksum');
delete_site_option('ppw_data_checksum');
delete_option('wpfolio_ppwp_anylc_redirect');
delete_site_option('wpfolio_ppwp_anylc_redirect');
delete_option('wpfolio_ppwp_anylc_site_uid');
delete_site_option('wpfolio_ppwp_anylc_site_uid');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ppwp_sidebar_content');
delete_site_transient('ppwp_sidebar_content');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpfolio_ppwp_anylc_optin_notice_%', '_site_transient_wpfolio_ppwp_anylc_optin_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpfolio_ppwp_state_%', '_site_transient_wpfolio_ppwp_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ppwp_post_password_bk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ppwp_post_password_bk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ppwp_post_password_bk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ppwp_post_password_bk' ) );

