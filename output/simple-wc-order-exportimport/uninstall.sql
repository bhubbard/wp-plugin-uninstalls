-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_total', '_billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_total', '_billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_total', '_billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_total', '_billing_email');

