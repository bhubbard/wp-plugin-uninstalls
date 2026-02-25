-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('audio_playlist_manager_db_version', 'ti_apm_widget_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file');

