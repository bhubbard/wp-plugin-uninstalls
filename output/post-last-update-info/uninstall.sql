-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plui_enabled', 'plui_custom_text', 'plui_display_position', 'plui_disable_on_single_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_plui_disable_last_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('_plui_disable_last_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('_plui_disable_last_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_plui_disable_last_update');

