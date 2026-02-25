-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ame-digital_settings', 'welcome_learn_more');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wad_api_order_status', '_wad_captured_order_uuid', '_wad_captured_order_nsu', '_wad_api_order_id', '_ame_digital_response', '_wad_api_order_cashbackamount', '_shipping_number', '_shipping_neighborhood', '_billing_number', '_billing_neighborhood');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wad_api_order_status', '_wad_captured_order_uuid', '_wad_captured_order_nsu', '_wad_api_order_id', '_ame_digital_response', '_wad_api_order_cashbackamount', '_shipping_number', '_shipping_neighborhood', '_billing_number', '_billing_neighborhood');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wad_api_order_status', '_wad_captured_order_uuid', '_wad_captured_order_nsu', '_wad_api_order_id', '_ame_digital_response', '_wad_api_order_cashbackamount', '_shipping_number', '_shipping_neighborhood', '_billing_number', '_billing_neighborhood');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wad_api_order_status', '_wad_captured_order_uuid', '_wad_captured_order_nsu', '_wad_api_order_id', '_ame_digital_response', '_wad_api_order_cashbackamount', '_shipping_number', '_shipping_neighborhood', '_billing_number', '_billing_neighborhood');

