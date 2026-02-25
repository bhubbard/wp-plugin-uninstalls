-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbuy_settings_pages', 'sbuy_branding_toggle_blocked_until', 'sbuy_backlink_text', 'classic-editor-replace', 'sbuy_settings_time', 'sbuy_settings_finance');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simplybuy');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simplybuy');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simplybuy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simplybuy');

