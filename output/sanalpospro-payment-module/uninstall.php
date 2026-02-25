<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SPPRO_PUBLIC_KEY');
delete_site_option('SPPRO_PUBLIC_KEY');
delete_option('SPPRO_SECRET_KEY');
delete_site_option('SPPRO_SECRET_KEY');
delete_option('SPPRO_TOKEN');
delete_site_option('SPPRO_TOKEN');
delete_option('SPPRO_ORDER_STATUS');
delete_site_option('SPPRO_ORDER_STATUS');
delete_option('SPPRO_CURRENCY_CONVERT');
delete_site_option('SPPRO_CURRENCY_CONVERT');
delete_option('SPPRO_SHOWINSTALLMENTSTABS');
delete_site_option('SPPRO_SHOWINSTALLMENTSTABS');
delete_option('SPPRO_PAYMENTPAGETHEME');
delete_site_option('SPPRO_PAYMENTPAGETHEME');
delete_option('SPPRO_INSTALLMENTS');
delete_site_option('SPPRO_INSTALLMENTS');
delete_option('SANALPOSPRO_ACCESS_TOKEN');
delete_site_option('SANALPOSPRO_ACCESS_TOKEN');
delete_option('woocommerce_sanalpospro_settings');
delete_site_option('woocommerce_sanalpospro_settings');
delete_option('woocommerce_sppro_settings');
delete_site_option('woocommerce_sppro_settings');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_phone');
delete_site_option('woocommerce_store_phone');
delete_option('options_phone');
delete_site_option('options_phone');

// Delete Transients
delete_transient('sanalpospro_api_token');
delete_site_transient('sanalpospro_api_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('sanalpospro_daily_cleanup');

