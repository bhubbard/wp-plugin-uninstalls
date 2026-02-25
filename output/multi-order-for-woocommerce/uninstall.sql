-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_mowc_orders_queue', 'alg_mowc_pos_queue', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_total', '_order_tax', '_cart_discount', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_total', '_order_tax', '_cart_discount', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_total', '_order_tax', '_cart_discount', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_total', '_order_tax', '_cart_discount', '_wp_page_template');

