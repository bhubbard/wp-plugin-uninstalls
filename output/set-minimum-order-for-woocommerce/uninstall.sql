-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wecreate_minimum_order_value', 'wecreate_minimum_order_start_date', 'wecreate_minimum_order_end_date', 'wecreate_minimum_order_use_amount', 'wecreate_minimum_order_checkout_notification');

