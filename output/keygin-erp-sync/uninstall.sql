-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keygin_settings', 'keygin_sync_enabled', 'keygin_next_sync', 'keygin_last_sync', 'keygin_erp_sync_active', 'keygin_warehouses', 'keygin_sync_running', 'keygin_warehouses_fetched_at');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_keygin_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_keygin_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_keygin_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_keygin_id');

