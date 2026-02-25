<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_all_currencies_enabled');
delete_site_option('alg_wc_all_currencies_enabled');
delete_option('alg_wc_all_currencies_custom_currencies_enabled');
delete_site_option('alg_wc_all_currencies_custom_currencies_enabled');
delete_option('alg_wc_all_currencies_custom_currencies_codes');
delete_site_option('alg_wc_all_currencies_custom_currencies_codes');
delete_option('alg_wc_all_currencies_custom_currencies_names');
delete_site_option('alg_wc_all_currencies_custom_currencies_names');
delete_option('alg_wc_all_currencies_hide_symbol');
delete_site_option('alg_wc_all_currencies_hide_symbol');
delete_option('alg_wc_all_currencies_use_code_as_symbol');
delete_site_option('alg_wc_all_currencies_use_code_as_symbol');
delete_option('alg_wc_all_currencies_list_country_enabled');
delete_site_option('alg_wc_all_currencies_list_country_enabled');
delete_option('alg_wc_all_currencies_list_crypto_enabled');
delete_site_option('alg_wc_all_currencies_list_crypto_enabled');
delete_option('alg_wc_all_currencies_custom_currencies_total');
delete_site_option('alg_wc_all_currencies_custom_currencies_total');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_all_currencies_version');
delete_site_option('alg_wc_all_currencies_version');
delete_option('alg_wc_all_currencies_symbols');
delete_site_option('alg_wc_all_currencies_symbols');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'woocommerce_currencies_pro_currency_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

