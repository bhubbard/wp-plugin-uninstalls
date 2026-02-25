-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'kenta_blocks_dynamic_assets_posts', 'kb_plugin_version', 'downloaded_font_files', 'kb-library-categories', 'kb-library-categories-version', 'kb-library-patterns', 'kb-library-patterns-version', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kb_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kb_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kb_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kb_image_hash');

