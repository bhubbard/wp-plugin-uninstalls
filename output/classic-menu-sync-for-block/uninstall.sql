-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic_menu_sync_for_block_version', 'classic_menu_sync_for_block_settings', 'classic_menu_sync_for_block_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nas_linked_menu_id', '_nas_auto_sync_enabled', '_nas_last_sync');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nas_linked_menu_id', '_nas_auto_sync_enabled', '_nas_last_sync');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nas_linked_menu_id', '_nas_auto_sync_enabled', '_nas_last_sync');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nas_linked_menu_id', '_nas_auto_sync_enabled', '_nas_last_sync');

