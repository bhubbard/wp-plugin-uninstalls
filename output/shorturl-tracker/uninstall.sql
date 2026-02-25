-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', '_order_total', '_date_paid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', '_order_total', '_date_paid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', '_order_total', '_date_paid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', '_order_total', '_date_paid');

