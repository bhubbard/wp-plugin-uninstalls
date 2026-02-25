-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_recent_orders_order_statuses', 'alg_wc_recent_orders_template_order_item_row', 'alg_wc_recent_orders_limit', 'alg_wc_recent_orders_template_before', 'alg_wc_recent_orders_template_row', 'alg_wc_recent_orders_template_after', 'alg_wc_recent_orders_template_guest', 'alg_wc_recent_orders_order_date_format', 'woocommerce_myaccount_page_id', 'alg_wc_recent_orders_use_transients', 'alg_wc_recent_orders_transients_expiration', 'alg_wc_recent_orders_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

