-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('minimum_order_amount', 'minimum_order_amount_alert', 'maximum_order_amount', 'maximum_order_amount_alert');

