-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dn_shipping_by_price-tables', 'dn_shipping_by_price-last_id');

