-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisp_bulk_products', 'aisp_bulk_action');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aisp_exclusive_users', '_aisp_category_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aisp_exclusive_users', '_aisp_category_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aisp_exclusive_users', '_aisp_category_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aisp_exclusive_users', '_aisp_category_users');

