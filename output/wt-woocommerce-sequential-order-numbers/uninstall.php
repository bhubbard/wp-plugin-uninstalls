<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wt_custom_order_number_search');
delete_site_option('wt_custom_order_number_search');
delete_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_site_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_option('wt_seq_basic_installation_date');
delete_site_option('wt_seq_basic_installation_date');
delete_option('wt_seq_basic_start_date');
delete_site_option('wt_seq_basic_start_date');
delete_option('wt_sequence_order_number_start');
delete_site_option('wt_sequence_order_number_start');
delete_option('wt_last_sequence_start');
delete_site_option('wt_last_sequence_start');
delete_option('wt_sequence_order_number_prefix');
delete_site_option('wt_sequence_order_number_prefix');
delete_option('wt_last_prefix');
delete_site_option('wt_last_prefix');
delete_option('wt_sequence_order_date_prefix');
delete_site_option('wt_sequence_order_date_prefix');
delete_option('wt_last_date_prefix');
delete_site_option('wt_last_date_prefix');
delete_option('wt_renumerate');
delete_site_option('wt_renumerate');
delete_option('wt_sequence_order_number_format');
delete_site_option('wt_sequence_order_number_format');
delete_option('wt_sequence_last_order_number_format');
delete_site_option('wt_sequence_last_order_number_format');
delete_option('wt_sequence_order_number_padding');
delete_site_option('wt_sequence_order_number_padding');
delete_option('wt_sequence_last_order_number_padding');
delete_site_option('wt_sequence_last_order_number_padding');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wt_custom_order_number_tracking_enabled');
delete_site_option('wt_custom_order_number_tracking_enabled');
delete_option('wt_advanced_order_number_version');
delete_site_option('wt_advanced_order_number_version');
delete_option('wt_advanced_order_number_offset');
delete_site_option('wt_advanced_order_number_offset');
delete_option('wt_last_order_number');
delete_site_option('wt_last_order_number');
delete_option('wt_sequence_increment_counter');
delete_site_option('wt_sequence_increment_counter');

