-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_custom_order_number_search', 'woocommerce_custom_orders_table_data_sync_enabled', 'wt_seq_basic_installation_date', 'wt_seq_basic_start_date', 'wt_sequence_order_number_start', 'wt_last_sequence_start', 'wt_sequence_order_number_prefix', 'wt_last_prefix', 'wt_sequence_order_date_prefix', 'wt_last_date_prefix', 'wt_renumerate', 'wt_sequence_order_number_format', 'wt_sequence_last_order_number_format', 'wt_sequence_order_number_padding', 'wt_sequence_last_order_number_padding', 'active_sitewide_plugins', 'wt_custom_order_number_tracking_enabled', 'wt_advanced_order_number_version', 'wt_advanced_order_number_offset', 'wt_last_order_number', 'wt_sequence_increment_counter');

