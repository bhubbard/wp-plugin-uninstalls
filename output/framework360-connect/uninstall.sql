-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fw360_api_key', 'fw360_api_url', 'fw360_allowed_roles', 'fw360_default_tags', 'fw360_users_sync', 'fw360_sync_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fw360_order_id', '_fw360_order_synced');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fw360_order_id', '_fw360_order_synced');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fw360_order_id', '_fw360_order_synced');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fw360_order_id', '_fw360_order_synced');

