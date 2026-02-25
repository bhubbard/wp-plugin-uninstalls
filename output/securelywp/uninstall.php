<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('securelywp_hardening_options');
delete_site_option('securelywp_hardening_options');
delete_option('securelywp_headers_options');
delete_site_option('securelywp_headers_options');
delete_option('securelywp_2fa_options');
delete_site_option('securelywp_2fa_options');
delete_option('securelywp_firewall_options');
delete_site_option('securelywp_firewall_options');
delete_option('securelywp_blocked_requests');
delete_site_option('securelywp_blocked_requests');
delete_option('securelywp_options');
delete_site_option('securelywp_options');

// Delete Transients
delete_transient('securelywp_cache_purged');
delete_site_transient('securelywp_cache_purged');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_securelywp_email_2fa_code_%', '_site_transient_securelywp_email_2fa_code_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_securelywp_2fa_user_%', '_site_transient_securelywp_2fa_user_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'securelywp_2fa_user_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'securelywp_2fa_user_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'securelywp_2fa_user_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'securelywp_2fa_user_options' ) );

