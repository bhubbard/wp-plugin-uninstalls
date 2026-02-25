<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('holded_api_key');
delete_site_option('holded_api_key');
delete_option('holded_api_url');
delete_site_option('holded_api_url');
delete_option('holdedwc_sync');
delete_site_option('holdedwc_sync');
delete_option('woocommerce_holdedwc-configpanel_settings');
delete_site_option('woocommerce_holdedwc-configpanel_settings');

// Delete Transients
delete_transient('holded_log');
delete_site_transient('holded_log');

