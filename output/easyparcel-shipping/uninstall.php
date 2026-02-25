<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('_easyparcel_migrated_v2');
delete_site_option('_easyparcel_migrated_v2');
delete_option('easyparcel_auto_fulfillment_settings');
delete_site_option('easyparcel_auto_fulfillment_settings');
delete_option('woocommerce_easyparcel_settings');
delete_site_option('woocommerce_easyparcel_settings');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

// Clear Cron Jobs
wp_clear_scheduled_hook('easyparcel_log_store_info_once');
wp_clear_scheduled_hook('easyparcel_delete_old_zip_files');

