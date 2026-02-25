<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hesapis_api_key');
delete_site_option('hesapis_api_key');
delete_option('hesapis_modules');
delete_site_option('hesapis_modules');
delete_option('hesapis_refresh_rate');
delete_site_option('hesapis_refresh_rate');
delete_option('hesapis_cache_time');
delete_site_option('hesapis_cache_time');
delete_option('hesapis_language');
delete_site_option('hesapis_language');
delete_option('hesapis_currency');
delete_site_option('hesapis_currency');
delete_option('hesapis_theme');
delete_site_option('hesapis_theme');
delete_option('hesapis_show_credit');
delete_site_option('hesapis_show_credit');

// Delete Transients
delete_transient('hesapis_gold_data');
delete_site_transient('hesapis_gold_data');
delete_transient('hesapis_currency_data');
delete_site_transient('hesapis_currency_data');
delete_transient('hesapis_crypto_data');
delete_site_transient('hesapis_crypto_data');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hesapis_%', '_site_transient_hesapis_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('hesapis_market_data');
delete_site_transient('hesapis_market_data');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hesapis_refresh_%', '_site_transient_hesapis_refresh_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('hesapis_refresh_cache');

