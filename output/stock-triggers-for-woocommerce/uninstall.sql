-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_stock_triggers_adjust_line_item_product_stock_enabled', 'alg_wc_stock_triggers_increase_on_ajax_order', 'alg_wc_stock_triggers_shop_order_bulk_actions', 'alg_wc_stock_triggers_debug', 'alg_wc_stock_triggers_adjust_line_item_product_stock_statuses', 'alg_wc_stock_triggers_plugin_enabled', 'alg_wc_stock_triggers_force_can_update_order_stock', 'alg_wc_stock_triggers_enabled', 'alg_wc_stock_triggers', 'alg_wc_stock_triggers_do_remove', 'alg_wc_stock_triggers_require_product', 'alg_wc_stock_triggers_require_product_cat', 'alg_wc_stock_triggers_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

