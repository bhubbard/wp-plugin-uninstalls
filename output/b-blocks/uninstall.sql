-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bBlocksApiKeys', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'bBlocksDisabledBlocks', 'bBlocks_custom_cursor_settings', 'bBlocksUtils', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'bblocks_show_activation_notice', 'b-blocks-enable-svg-mime-type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ast_block_templates_image_hash', 'bBlocksCursorData', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ast_block_templates_image_hash', 'bBlocksCursorData', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ast_block_templates_image_hash', 'bBlocksCursorData', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ast_block_templates_image_hash', 'bBlocksCursorData', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bblocks_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bblocks_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bblocks_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bblocks_%';

