<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_paidy_show_ssl_notice');
delete_site_option('wc_paidy_show_ssl_notice');
delete_option('wc_paidy_show_curl_notice');
delete_site_option('wc_paidy_show_curl_notice');
delete_option('woocommerce_paidy_settings');
delete_site_option('woocommerce_paidy_settings');
delete_option('wc_paidy_show_pr_notice');
delete_site_option('wc_paidy_show_pr_notice');
delete_option('wc-paygent-paidy');
delete_site_option('wc-paygent-paidy');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_paidy_on_boarding_settings');
delete_site_option('woocommerce_paidy_on_boarding_settings');
delete_option('paidy_site_hash');
delete_site_option('paidy_site_hash');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_paidy_apply_notice_2');
delete_site_option('wc_paidy_apply_notice_2');
delete_option('wc_paidy_apply_notice_3');
delete_site_option('wc_paidy_apply_notice_3');
delete_option('wc_paidy_apply_notice_99');
delete_site_option('wc_paidy_apply_notice_99');
delete_option('paidy_received_data');
delete_site_option('paidy_received_data');
delete_option('received_data');
delete_site_option('received_data');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('paidy_do_activation_redirect');
delete_site_option('paidy_do_activation_redirect');

