-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flexible_shipping_rates', 'wcj_orders_custom_statuses_array');

