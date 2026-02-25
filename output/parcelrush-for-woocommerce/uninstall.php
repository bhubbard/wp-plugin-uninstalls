<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parcelrush_api_key');
delete_site_option('parcelrush_api_key');
delete_option('parcelrush_markup_type');
delete_site_option('parcelrush_markup_type');
delete_option('parcelrush_markup_value');
delete_site_option('parcelrush_markup_value');
delete_option('parcelrush_fallback_rate');
delete_site_option('parcelrush_fallback_rate');
delete_option('parcelrush_fallback_label');
delete_site_option('parcelrush_fallback_label');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('parcelrush_rates_enabled');
delete_site_option('parcelrush_rates_enabled');

