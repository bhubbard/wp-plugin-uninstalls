#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wt_custom_order_number_search'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'wt_seq_basic_installation_date'
wp option delete 'wt_seq_basic_start_date'
wp option delete 'wt_sequence_order_number_start'
wp option delete 'wt_last_sequence_start'
wp option delete 'wt_sequence_order_number_prefix'
wp option delete 'wt_last_prefix'
wp option delete 'wt_sequence_order_date_prefix'
wp option delete 'wt_last_date_prefix'
wp option delete 'wt_renumerate'
wp option delete 'wt_sequence_order_number_format'
wp option delete 'wt_sequence_last_order_number_format'
wp option delete 'wt_sequence_order_number_padding'
wp option delete 'wt_sequence_last_order_number_padding'
wp option delete 'active_sitewide_plugins'
wp option delete 'wt_custom_order_number_tracking_enabled'
wp option delete 'wt_advanced_order_number_version'
wp option delete 'wt_advanced_order_number_offset'
wp option delete 'wt_last_order_number'
wp option delete 'wt_sequence_increment_counter'

