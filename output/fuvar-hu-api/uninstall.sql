-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fuvarhu_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_order_marked_d_by_fuvar', '_store_pickup_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_order_marked_d_by_fuvar', '_store_pickup_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_order_marked_d_by_fuvar', '_store_pickup_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_order_marked_d_by_fuvar', '_store_pickup_data');

