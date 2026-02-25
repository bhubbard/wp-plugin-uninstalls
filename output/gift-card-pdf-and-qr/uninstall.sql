-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcpqr_product_id', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_price', '_manage_stock', '_stock', '_stock_status', 'recipient_email', 'amount', 'order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_price', '_manage_stock', '_stock', '_stock_status', 'recipient_email', 'amount', 'order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_price', '_manage_stock', '_stock', '_stock_status', 'recipient_email', 'amount', 'order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_price', '_manage_stock', '_stock', '_stock_status', 'recipient_email', 'amount', 'order_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

