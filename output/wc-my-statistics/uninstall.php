<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc-my-statistics_display_in_account_tab');
delete_site_option('wc-my-statistics_display_in_account_tab');
delete_option('wc-my-statistics_account_tab_slug');
delete_site_option('wc-my-statistics_account_tab_slug');
delete_option('wc-my-statistics_account_tab_title');
delete_site_option('wc-my-statistics_account_tab_title');
delete_option('wc-my-statistics_myaccount_tables');
delete_site_option('wc-my-statistics_myaccount_tables');
delete_option('wc-my-statistics_no_orders_found_msg');
delete_site_option('wc-my-statistics_no_orders_found_msg');
delete_option('wc-my-statistics_order_status_label');
delete_site_option('wc-my-statistics_order_status_label');
delete_option('wc-my-statistics_order_count_label');
delete_site_option('wc-my-statistics_order_count_label');
delete_option('wc-my-statistics_product_table_heading');
delete_site_option('wc-my-statistics_product_table_heading');
delete_option('wc-my-statistics_product_name_label');
delete_site_option('wc-my-statistics_product_name_label');
delete_option('wc-my-statistics_product_count_label');
delete_site_option('wc-my-statistics_product_count_label');
delete_option('wc-my-statistics_start_date_label');
delete_site_option('wc-my-statistics_start_date_label');
delete_option('wc-my-statistics_start_date');
delete_site_option('wc-my-statistics_start_date');
delete_option('wc-my-statistics_end_date_label');
delete_site_option('wc-my-statistics_end_date_label');
delete_option('wc-my-statistics_submit_btn_label');
delete_site_option('wc-my-statistics_submit_btn_label');
delete_option('wc-my-statistics_export_csv_btn');
delete_site_option('wc-my-statistics_export_csv_btn');
delete_option('wc-my-statistics_export_btn_label');
delete_site_option('wc-my-statistics_export_btn_label');

