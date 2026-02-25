<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eshipper_require_postal');
delete_site_option('eshipper_require_postal');
delete_option('woocommerce_shipping_method_format');
delete_site_option('woocommerce_shipping_method_format');
delete_option('eshipper_version');
delete_site_option('eshipper_version');
delete_option('woocommerce_eshipper');
delete_site_option('woocommerce_eshipper');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('eshipper_plugin_activation');
delete_site_option('eshipper_plugin_activation');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('eshipper_shipping_margin_percentage');
delete_site_option('eshipper_shipping_margin_percentage');
delete_option('eshipper_shipping_margin_fixed');
delete_site_option('eshipper_shipping_margin_fixed');
delete_option('eshipper_transit_time_display');
delete_site_option('eshipper_transit_time_display');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('wp_eshipper_updated');
delete_site_transient('wp_eshipper_updated');
delete_transient('wp_eshipper_activated');
delete_site_transient('wp_eshipper_activated');

