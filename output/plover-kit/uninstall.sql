-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'plover-pattern-metas', 'plover-pattern-metas-version', 'plover-patterns-list', 'plover-patterns-list-version', 'plover-patterns-preview', 'plover-patterns-preview-version');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_fields';
DELETE FROM wp_options WHERE option_name LIKE 'plover_icon_collections_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plover_kit_code_snippet_location', 'plover_kit_code_snippet_priority', '_plover-kit_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('plover_kit_code_snippet_location', 'plover_kit_code_snippet_priority', '_plover-kit_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('plover_kit_code_snippet_location', 'plover_kit_code_snippet_priority', '_plover-kit_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plover_kit_code_snippet_location', 'plover_kit_code_snippet_priority', '_plover-kit_image_hash');

