-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atomx_settings_orders', 'atomx_settings_subs', 'atomx_settings_special_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_atomx_order_code', '_atomx_subs_code', '_price', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_atomx_order_code', '_atomx_subs_code', '_price', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_atomx_order_code', '_atomx_subs_code', '_price', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_atomx_order_code', '_atomx_subs_code', '_price', '_regular_price', '_sale_price');

