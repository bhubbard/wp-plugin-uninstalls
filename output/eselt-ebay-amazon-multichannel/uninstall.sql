-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eselt_api_keys', 'eselt_inventory_movements_db_version', 'eselt_admin_notice_error', 'eselt_admin_notice_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock');

