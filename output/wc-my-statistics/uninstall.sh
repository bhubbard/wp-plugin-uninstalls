#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc-my-statistics_display_in_account_tab'
wp option delete 'wc-my-statistics_account_tab_slug'
wp option delete 'wc-my-statistics_account_tab_title'
wp option delete 'wc-my-statistics_myaccount_tables'
wp option delete 'wc-my-statistics_no_orders_found_msg'
wp option delete 'wc-my-statistics_order_status_label'
wp option delete 'wc-my-statistics_order_count_label'
wp option delete 'wc-my-statistics_product_table_heading'
wp option delete 'wc-my-statistics_product_name_label'
wp option delete 'wc-my-statistics_product_count_label'
wp option delete 'wc-my-statistics_start_date_label'
wp option delete 'wc-my-statistics_start_date'
wp option delete 'wc-my-statistics_end_date_label'
wp option delete 'wc-my-statistics_submit_btn_label'
wp option delete 'wc-my-statistics_export_csv_btn'
wp option delete 'wc-my-statistics_export_btn_label'

