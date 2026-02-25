-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dn_shipping_by_weight-tables', 'dn_shipping_by_weight-last_id', 'woocommerce_weight_unit');

