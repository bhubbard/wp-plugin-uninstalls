<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_sepay_settings');
delete_site_option('woocommerce_sepay_settings');
delete_option('wc_sepay_webhook_id');
delete_site_option('wc_sepay_webhook_id');
delete_option('wc_sepay_last_connected_at');
delete_site_option('wc_sepay_last_connected_at');
delete_option('wc_sepay_access_token');
delete_site_option('wc_sepay_access_token');
delete_option('wc_sepay_refresh_token');
delete_site_option('wc_sepay_refresh_token');
delete_option('wc_sepay_token_expires');
delete_site_option('wc_sepay_token_expires');
delete_option('wc_sepay_webhook_api_key');
delete_site_option('wc_sepay_webhook_api_key');

// Delete Transients
delete_transient('wc_sepay_oauth_state');
delete_site_transient('wc_sepay_oauth_state');
delete_transient('wc_sepay_rate_limited');
delete_site_transient('wc_sepay_rate_limited');
delete_transient('wc_sepay_refresh_failure');
delete_site_transient('wc_sepay_refresh_failure');
delete_transient('wc_sepay_oauth_url');
delete_site_transient('wc_sepay_oauth_url');
delete_transient('wc_sepay_oauth_rate_limited');
delete_site_transient('wc_sepay_oauth_rate_limited');
delete_transient('wc_sepay_bank_accounts');
delete_site_transient('wc_sepay_bank_accounts');
delete_transient('wc_sepay_company');
delete_site_transient('wc_sepay_company');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wc_sepay_bank_account_%', '_site_transient_wc_sepay_bank_account_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wc_sepay_webhook_%', '_site_transient_wc_sepay_webhook_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wc_sepay_user_info');
delete_site_transient('wc_sepay_user_info');
delete_transient('wc_sepay_activation_redirect');
delete_site_transient('wc_sepay_activation_redirect');

