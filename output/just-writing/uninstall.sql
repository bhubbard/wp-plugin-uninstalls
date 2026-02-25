-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Just_Writing_Removed', 'just_writing_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_last');

