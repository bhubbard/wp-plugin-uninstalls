<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtrs_carrier_cache_version');
delete_site_option('wtrs_carrier_cache_version');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('edd_wtrs_license_key');
delete_site_option('edd_wtrs_license_key');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('edd_wtrs_license_data');
delete_site_option('edd_wtrs_license_data');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wtrs-settings');
delete_site_option('wtrs-settings');
delete_option('wtrs-shipping-rules');
delete_site_option('wtrs-shipping-rules');
delete_option('wtrs_rule_import_job_status');
delete_site_option('wtrs_rule_import_job_status');

// Delete Transients
delete_transient('durbin_country_code');
delete_site_transient('durbin_country_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('wtrs_process_rule_import_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

