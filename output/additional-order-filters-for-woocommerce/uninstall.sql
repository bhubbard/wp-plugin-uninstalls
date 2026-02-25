-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woaf_per_column', 'ant_additional_order_enabled_filters', 'woaf_custom_filters');

