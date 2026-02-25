<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_eu_vat_compliance_reporting_override');
delete_site_option('woocommerce_eu_vat_compliance_reporting_override');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('woocommerce_eu_vat_compliance_store_invalid_numbers');
delete_site_option('woocommerce_eu_vat_compliance_store_invalid_numbers');
delete_option('woocommerce_eu_vat_compliance_exchange_rate_provider');
delete_site_option('woocommerce_eu_vat_compliance_exchange_rate_provider');
delete_option('woocommerce_eu_vat_compliance_vat_recording_currency');
delete_site_option('woocommerce_eu_vat_compliance_vat_recording_currency');
delete_option('woocommerce_eu_vat_compliance_vat_region');
delete_site_option('woocommerce_eu_vat_compliance_vat_region');
delete_option('woocommerce_eu_vat_store_id');
delete_site_option('woocommerce_eu_vat_store_id');
delete_option('woocommerce_eu_vat_compliance_forbid_vatable_checkout');
delete_site_option('woocommerce_eu_vat_compliance_forbid_vatable_checkout');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_eu_vat_compliance_tax_classes');
delete_site_option('woocommerce_eu_vat_compliance_tax_classes');
delete_option('woocommerce_eu_vat_compliance_pdf_footer_b2c');
delete_site_option('woocommerce_eu_vat_compliance_pdf_footer_b2c');
delete_option('woocommerce_eu_vat_compliance_vat_match');
delete_site_option('woocommerce_eu_vat_compliance_vat_match');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_eu_vat_cart_vat_exempt_above_currency');
delete_site_option('woocommerce_eu_vat_cart_vat_exempt_above_currency');
delete_option('woocommerce_vat_compliance_last_version');
delete_site_option('woocommerce_vat_compliance_last_version');
delete_option('woocommerce_vat_compliance_geo_locate');
delete_site_option('woocommerce_vat_compliance_geo_locate');
delete_option('woocommerce_eu_vat_compliance_same_prices');
delete_site_option('woocommerce_eu_vat_compliance_same_prices');
delete_option('wceuvat_background_tests');
delete_site_option('wceuvat_background_tests');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('wc_uk_vat_hmrc_csrf');
delete_site_option('wc_uk_vat_hmrc_csrf');
delete_option('woocommerce_price_display_suffix');
delete_site_option('woocommerce_price_display_suffix');
delete_option('woocommerce_default_customer_address');
delete_site_option('woocommerce_default_customer_address');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_updated' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_vat_compliance_vat_sense_api_key');
delete_site_option('woocommerce_vat_compliance_vat_sense_api_key');
delete_option('woocommerce_tax_classes');
delete_site_option('woocommerce_tax_classes');

// Delete Transients
delete_transient('wc_euro_vat_rates_by_iso');
delete_site_transient('wc_euro_vat_rates_by_iso');

// Clear Cron Jobs
wp_clear_scheduled_hook('wceuvat_background_tests');

