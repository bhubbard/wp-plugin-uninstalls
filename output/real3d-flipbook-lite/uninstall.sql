-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'r3d', 'real3dflipbook_capability', 'r3d_version', 'r3d_flush_rewrite_rules', 'r3d_autoload_disabled', 'real3dflipbook_global', 'real3dflipbooks_ids', 'r3d_posts_generated', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');
DELETE FROM wp_options WHERE option_name LIKE 'real3dflipbook_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dflip_data', '3dfb_data', 'flipbook_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dflip_data', '3dfb_data', 'flipbook_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dflip_data', '3dfb_data', 'flipbook_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dflip_data', '3dfb_data', 'flipbook_id');

