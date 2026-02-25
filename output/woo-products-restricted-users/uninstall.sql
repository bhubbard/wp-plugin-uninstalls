-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpru_enable', 'wpru_mode', 'wpru_users', 'wpru_allowed_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpru_enable', 'wpru_mode', 'wpru_users', 'wpru_allowed_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpru_enable', 'wpru_mode', 'wpru_users', 'wpru_allowed_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpru_enable', 'wpru_mode', 'wpru_users', 'wpru_allowed_products');

