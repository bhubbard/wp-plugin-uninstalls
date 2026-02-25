-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_parent_product', '_child_products', '_stock', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_parent_product', '_child_products', '_stock', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_parent_product', '_child_products', '_stock', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_parent_product', '_child_products', '_stock', '_stock_status');

