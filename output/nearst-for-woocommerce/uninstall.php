<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nearst_upload_key');
delete_site_option('nearst_upload_key');
delete_option('nearst_last_error');
delete_site_option('nearst_last_error');
delete_option('nearst_upload_type');
delete_site_option('nearst_upload_type');
delete_option('nearst_last_upload_products');
delete_site_option('nearst_last_upload_products');
delete_option('nearst_last_upload');
delete_site_option('nearst_last_upload');
delete_option('nearst_product_identifier');
delete_site_option('nearst_product_identifier');
delete_option('nearst_activated');
delete_site_option('nearst_activated');
delete_option('nearst_auto_update_enabled');
delete_site_option('nearst_auto_update_enabled');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('nearst_regular_upload');

