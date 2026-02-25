-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dn_wc_minimum_order-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dn_wc_minimum_order_exception');
DELETE FROM wp_usermeta WHERE meta_key IN ('dn_wc_minimum_order_exception');
DELETE FROM wp_termmeta WHERE meta_key IN ('dn_wc_minimum_order_exception');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dn_wc_minimum_order_exception');

