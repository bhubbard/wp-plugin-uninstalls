<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpd_api_service_provider');
delete_site_option('dpd_api_service_provider');
delete_option('dpd_test_mode');
delete_site_option('dpd_test_mode');
delete_option('dpd_api_username');
delete_site_option('dpd_api_username');
delete_option('dpd_api_password');
delete_site_option('dpd_api_password');
delete_option('dpd_parcels_countries');
delete_site_option('dpd_parcels_countries');
delete_option('dpd_rod_service');
delete_site_option('dpd_rod_service');
delete_option('dpd_return_labels');
delete_site_option('dpd_return_labels');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('dpd_parcel_distribution');
delete_site_option('dpd_parcel_distribution');
delete_option('dpd_label_size');
delete_site_option('dpd_label_size');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('dpd_google_map_key');
delete_site_option('dpd_google_map_key');
delete_option('wc_shipping_dpd_baltic_db_version');
delete_site_option('wc_shipping_dpd_baltic_db_version');
delete_option('dpd_request_order_nr');
delete_site_option('dpd_request_order_nr');
delete_option('dpd_baltic_flash_notices');
delete_site_option('dpd_baltic_flash_notices');
delete_option('dpd_logging_mode');
delete_site_option('dpd_logging_mode');
delete_option('dpd_cod_fee');
delete_site_option('dpd_cod_fee');
delete_option('dpd_cod_fee_percentage');
delete_site_option('dpd_cod_fee_percentage');

// Clear Cron Jobs
wp_clear_scheduled_hook('dpd_parcels_country_update');
wp_clear_scheduled_hook('dpd_parcels_receiver');
wp_clear_scheduled_hook('dpd_parcels_updater');

