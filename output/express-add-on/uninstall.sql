-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vxn_wa_form_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vxn_express_order_via_shopee', '_vxn_express_order_via_tokopedia', '_vxn_express_order_via_bukalapak', '_sku', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vxn_express_order_via_shopee', '_vxn_express_order_via_tokopedia', '_vxn_express_order_via_bukalapak', '_sku', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vxn_express_order_via_shopee', '_vxn_express_order_via_tokopedia', '_vxn_express_order_via_bukalapak', '_sku', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vxn_express_order_via_shopee', '_vxn_express_order_via_tokopedia', '_vxn_express_order_via_bukalapak', '_sku', 'thumbnail_id');

