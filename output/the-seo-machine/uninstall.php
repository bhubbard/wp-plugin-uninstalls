<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsm_current_columns_to_show');
delete_site_option('tsm_current_columns_to_show');
delete_option('tsm_quantity_per_batch');
delete_site_option('tsm_quantity_per_batch');
delete_option('tsm_crawl_type');
delete_site_option('tsm_crawl_type');
delete_option('tsm_db_version');
delete_site_option('tsm_db_version');
delete_option('tsm_time_between_batches');
delete_site_option('tsm_time_between_batches');
delete_option('tsm_autoreload_datatables');
delete_site_option('tsm_autoreload_datatables');

