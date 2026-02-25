-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onlyoffice-plugin-uuid', 'onlyoffice-plugin-bytes', 'onlyoffice-formats', 'onlyoffice-formats-version', 'onlyoffice_settings', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_last', '_wp_attachment_metadata', '_edit_lock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_last', '_wp_attachment_metadata', '_edit_lock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_last', '_wp_attachment_metadata', '_edit_lock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_last', '_wp_attachment_metadata', '_edit_lock');

