-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PW_Options', 'pw_notices', 'pw_dismiss_notice_all', 'persian_woocommerce_feed', 'woocommerce_allow_tracking', 'woocommerce_custom_orders_table_enabled', 'woocommerce_analytics_enabled', 'woocommerce_notify_low_stock_amount', 'woocommerce_excluded_report_order_statuses', 'woocommerce_date_type', 'pw_update_notices');
DELETE FROM wp_options WHERE option_name LIKE 'persian_woo_notice_number_%';
DELETE FROM wp_options WHERE option_name LIKE 'pw_dismiss_notice_%';

