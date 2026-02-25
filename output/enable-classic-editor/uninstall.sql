-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecew_settings', 'ecew_settings_last_saved');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ecew_editor_choice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ecew_editor_choice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ecew_editor_choice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ecew_editor_choice');

