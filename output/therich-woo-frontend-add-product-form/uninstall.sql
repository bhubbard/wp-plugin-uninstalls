-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_price', '_sku', '_product_added_user_email', '_product_url', '_button_text', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_price', '_sku', '_product_added_user_email', '_product_url', '_button_text', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_price', '_sku', '_product_added_user_email', '_product_url', '_button_text', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_price', '_sku', '_product_added_user_email', '_product_url', '_button_text', '_thumbnail_id');

