-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_expiry_date', 'woo_expiry_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_expiry_date', 'woo_expiry_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_expiry_date', 'woo_expiry_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_expiry_date', 'woo_expiry_action');

