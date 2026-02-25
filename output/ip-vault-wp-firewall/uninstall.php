<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipv_count_blocked');
delete_site_option('ipv_count_blocked');
delete_option('ipv_log_keep_days');
delete_site_option('ipv_log_keep_days');
delete_option('ipv_modus');
delete_site_option('ipv_modus');
delete_option('ipv_request_includes');
delete_site_option('ipv_request_includes');
delete_option('ipv_request_excludes');
delete_site_option('ipv_request_excludes');
delete_option('ipv_auth_slug');
delete_site_option('ipv_auth_slug');
delete_option('ipv_gdpr_ips');
delete_site_option('ipv_gdpr_ips');
delete_option('ipv_use_asn');
delete_site_option('ipv_use_asn');
delete_option('ipv_home_path');
delete_site_option('ipv_home_path');
delete_option('ipv_whitelist');
delete_site_option('ipv_whitelist');
delete_option('ipv_auth_page_id');
delete_site_option('ipv_auth_page_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ipv_ip_%', '_site_transient_ipv_ip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ipv_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );

