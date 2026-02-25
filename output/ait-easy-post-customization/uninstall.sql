-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aitepc_expiry_date_post_types', 'aitepc_custom_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aitepc_expiry_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aitepc_expiry_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aitepc_expiry_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aitepc_expiry_date');

