-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashify_on', 'dashify_dismissed_release_notices_forever', 'dashify_dismissed_notices', 'dashify_analytics_range', 'woocommerce_custom_orders_table_enabled', 'dashify_line_item_menu_order_column_enabled', 'dashify_line_item_menu_order_column_default_sort', 'dashify_list_table_open_search_and_filter_by_default', 'woocommerce_currency', 'dashify_migrated_order_edit_meta_box_layout_to_user_meta', 'dashify_migrated_subscription_edit_meta_box_layout_to_user_meta', 'dashify_navigation_enabled', 'udb_modules');

