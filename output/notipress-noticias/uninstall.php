<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ntpmx_new_content');
delete_site_option('ntpmx_new_content');
delete_option('ntpmx_api');
delete_site_option('ntpmx_api');
delete_option('ntpmx_rich_text');
delete_site_option('ntpmx_rich_text');
delete_option('ntpmx_links');
delete_site_option('ntpmx_links');
delete_option('ntpmx_source');
delete_site_option('ntpmx_source');
delete_option('ntpmx_show_rows');
delete_site_option('ntpmx_show_rows');
delete_option('ntpmx_clean_rows_in_days');
delete_site_option('ntpmx_clean_rows_in_days');
delete_option('ntpmx_date_activation');
delete_site_option('ntpmx_date_activation');
delete_option('ntpmx_version');
delete_site_option('ntpmx_version');
delete_option('ntpmx_sku');
delete_site_option('ntpmx_sku');
delete_option('ntpmx_product');
delete_site_option('ntpmx_product');
delete_option('ntpmx_date_install');
delete_site_option('ntpmx_date_install');
delete_option('ntpmx_date_update');
delete_site_option('ntpmx_date_update');
delete_option('ntpmx_minutes');
delete_site_option('ntpmx_minutes');
delete_option('ntpmx_qty');
delete_site_option('ntpmx_qty');
delete_option('ntpmx_customer_id');
delete_site_option('ntpmx_customer_id');
delete_option('ntpmx_sku_name');
delete_site_option('ntpmx_sku_name');
delete_option('ntpmx_last_check');
delete_site_option('ntpmx_last_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('ntpmx_cron');

