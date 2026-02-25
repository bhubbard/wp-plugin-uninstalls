-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stax-render-status', 'stax-version', 'stax_options', 'stax-upgrades', 'stax_editor_theme', 'stax_color_picker', 'fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'stax-default-templates', 'update_plugins', 'update_themes');

