<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GBBVA_PUBLIC_KEY');
delete_site_option('GBBVA_PUBLIC_KEY');
delete_option('GBBVA_SECRET_KEY');
delete_site_option('GBBVA_SECRET_KEY');
delete_option('GBBVA_TOKEN');
delete_site_option('GBBVA_TOKEN');
delete_option('GBBVA_ORDER_STATUS');
delete_site_option('GBBVA_ORDER_STATUS');
delete_option('GBBVA_CURRENCY_CONVERT');
delete_site_option('GBBVA_CURRENCY_CONVERT');
delete_option('GBBVA_SHOWINSTALLMENTSTABS');
delete_site_option('GBBVA_SHOWINSTALLMENTSTABS');
delete_option('GBBVA_PAYMENTPAGETHEME');
delete_site_option('GBBVA_PAYMENTPAGETHEME');
delete_option('GBBVA_INSTALLMENTS');
delete_site_option('GBBVA_INSTALLMENTS');
delete_option('woocommerce_garantibbva_settings');
delete_site_option('woocommerce_garantibbva_settings');
delete_option('woocommerce_gbbva_settings');
delete_site_option('woocommerce_gbbva_settings');
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
delete_transient('garantibbva_api_token');
delete_site_transient('garantibbva_api_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('garantibbva_daily_cleanup');

